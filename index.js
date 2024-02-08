import fs from 'fs/promises';
import path from 'path';
import { exec } from 'child_process';
import { fileURLToPath } from 'url';
import chalk from 'chalk';
import {
	Parser,
	Tokenizer,
	Compiler,
	MemoryManager,
	Draw,
	SIMPLE_IMPORTS
} from '@munezero/floparser';

const sourceDir = 'Samples';
const __dirname = path.dirname(fileURLToPath(import.meta.url));
const ENCODER = new TextEncoder();

async function runCommand(command) {
	return new Promise((resolve, reject) => {
		exec(command, (error, stdout, stderr) => {
			if (error) {
				reject(error);
			} else {
				resolve({ stdout, stderr });
			}
		});
	});
}

async function checkFileExists(filePath) {
	try {
		await fs.access(filePath);
		return true; // The file exists
	} catch (error) {
		return false; // The file does not exist
	}
}

async function readCodeFiles(dir) {
	const items = await fs.readdir(dir);

	for (const item of items) {
		const itemPath = path.join(dir, item);
		const stats = await fs.stat(itemPath);

		if (stats.isDirectory()) {
			await readCodeFiles(itemPath);
		} else if (item === 'code.flo') {
			const codeContent = await fs.readFile(itemPath, 'utf8');
			const jsPath = path.join(dir, 'c_code.cjs');
			const wasmPath = path.join(dir, 'c_code.wasm');
			const cItemPath = path.join(dir, 'code.c');
			if (!(await checkFileExists(cItemPath))) {
				console.log('File not found: ', cItemPath, '!');
				break;
			}
			try {
				const cCompilationStart = performance.now();
				await runCommand(
					`emcc ${cItemPath} -O2 -s WASM=1 -s SIDE_MODULE=1 -s EXPORTED_FUNCTIONS='["_main"]' -o ${jsPath.replace(
						'.cjs',
						'.wasm'
					)}`
				);
				const cCompilationEnd = performance.now();
				await runCommand(`wasm2wat ${wasmPath} -o ${wasmPath.replace('.wasm', '.wat')}`);

				const cInitialCompilation = cCompilationEnd - cCompilationStart;

				await run(itemPath, codeContent, jsPath, wasmPath, cInitialCompilation);
			} catch (err) {
				console.log(`Command running failed.....`, err);
			}
		}
	}
}

async function loadWasmFile(js, wasm) {
	const wasmModule = await import(js);
	const wasmBuffer = await fs.readFile(wasm);

	const { instance } = await WebAssembly.instantiate(wasmBuffer, wasmModule);

	return instance;
}
async function loadWASMNoJS(wasm) {
	const WA = WebAssembly,
		env = {
			memoryBase: 0,
			tableBase: 0,
			memory: new WA.Memory({ initial: 256 }),
			table: new WA.Table({ initial: 0, element: 'anyfunc' })
		},
		code = new Uint8Array(await fs.readFile(wasm));
	const WAModule = await WA.compile(code);
	const WAInstance = await WA.instantiate(WAModule, env);
	return WAInstance;
}

async function run(filePath, codeContent, altPathJS, altPathWASM, cInitialCompilation) {
	let failures = [];
	let representation;

	try {
		const floCompilationStart = performance.now();
		const tokenizer = new Tokenizer();

		const parser = Parser.create({
			path: filePath,
			imports: SIMPLE_IMPORTS
		});

		parser.on(Parser.EVENT_FAIL, (failure) => {
			failures = [...failures, failure];
			representation = null;
			const pathSplit = filePath.split('/');
			const split = pathSplit[pathSplit.length > 2 ? pathSplit.length - 2 : 0];
			console.log(
				chalk.red(`Error ${failure.type} in ${split}:`),
				chalk.redBright(failure.message)
			);
			console.log(failure)
		});

		parser.on(Parser.EVENT_DONE, (data) => {
			representation = data;
		});

		tokenizer.on('token', (position, array, index, length) => {
			parser.feed(position, array, index, length);
		});

		tokenizer.feed(ENCODER.encode(codeContent));

		tokenizer.done();

		parser.done();

		const execute = async (glue, module) => {
			let key;
			for (const [iKey, value] of Object.entries(glue.procedures)) {
				const { name, path: iPath } = value;
				if (name === 'main' && iPath === filePath) {
					key = iKey;
					break;
				}
			}
			if (key) {
				const memory = new WebAssembly.Memory({
					initial: 128
				});

				const state = MemoryManager(memory);

				const drawer = Draw(memory);

				const descriptionImports = Object.freeze({
					imports: {}
				});

				const memoryImport = 'memory';

				Object.keys(glue.imports).forEach((importKey) => {
					if (state[importKey]) {
						descriptionImports.imports[importKey] = state[importKey];
					}
					if (drawer[importKey]) {
						descriptionImports.imports[importKey] = drawer[importKey];
					}
					if (importKey === memoryImport) {
						descriptionImports.imports[importKey] = memory;
					}
				});

				const moduleCompiled = await WebAssembly.compile(module);
				const moduleInstance = await WebAssembly.instantiate(moduleCompiled, descriptionImports);

				const floProcedure = moduleInstance.exports[key];
				const floCompilationEnd = performance.now();
				const floCompilation = floCompilationEnd - floCompilationStart;

				const floWASMPath = altPathJS.replace('c_code.cjs', 'flo_code.wasm');

				await fs.writeFile(floWASMPath, module);
				await runCommand(`wasm2wat ${floWASMPath} -o ${floWASMPath.replace('.wasm', '.wat')}`);

				const cXCompilationStart = performance.now();
				// const wasmInstance = await loadWasmFile(altPathJS, altPathWASM);
				const wasmInstance = await loadWASMNoJS(altPathWASM);

				if (!wasmInstance.exports.main) {
					throw new Error('Exported function main not found!!');
				}
				const cProcedure = wasmInstance.exports.main;
				const cXCompilationEnd = performance.now();
				const cCompilation = cXCompilationEnd - cXCompilationStart + cInitialCompilation;

				if (floProcedure && cProcedure) {
					console.log(filePath);
					if (filePath.includes('addition')) {
						const add = () => {
							return 5 + 5;
						};
						let startJS = performance.now();
						add();
						let endJS = performance.now();
						console.log('Javascript: ', endJS - startJS);
					}
					let startFlo = performance.now();
					floProcedure();
					let endFlo = performance.now();
					let timeFlo = endFlo - startFlo;
					const timeFloDescription = `Flogram run time: ${timeFlo} milliseconds.`;
					console.log(timeFloDescription);

					let startC = performance.now();
					cProcedure();
					let endC = performance.now();
					console.log('........................');
					let timeC = endC - startC;
					const timeCDescription = `C run time: ${timeC} milliseconds.`;
					console.log(timeCDescription);

					const resultsPath = path.join(filePath.replace('/code.flo', ''), 'results.txt');
					fs.writeFile(
						resultsPath,
						`Compile Time: \n\tFlogram compile time: ${floCompilation} milliseconds \n\tC compile time: ${cCompilation} milliseconds \n\nRun Time:\n\t${timeFloDescription} \n\t${timeCDescription} \n`
					);
				}
			}
		};

		if (representation) {
			const compilerOptions = Object.freeze({
				memory: true,
				draws: true
			});

			const [glue, module] = Compiler.compile(representation, compilerOptions);
			await execute(glue, module);
		}
	} catch (error) {
		console.error(chalk.redBright(`Error processing file ${filePath}:`, error.message));
		console.log(error)
	}
}

(async () => {
	try {
		await readCodeFiles(path.join(__dirname, sourceDir));
		console.log(`'Finished updating performance numbers......`);
	} catch (error) {
		console.error('An error occurred:', error);
	}
})();
