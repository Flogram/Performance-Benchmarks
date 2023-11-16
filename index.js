import fs from 'fs/promises';
import { readFileSync } from 'fs';
import path from 'path';
import { exec } from 'child_process';
import { fileURLToPath } from 'url';
import { WASI } from '@wasmer/wasi';
import { WasmFs } from '@wasmer/wasmfs';
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
            const jsPath = path.join(dir, 'code.cjs');
            const wasmPath = path.join(dir, 'code.wasm');
            const cItemPath = path.join(dir, 'code.c');
            if(!await checkFileExists(cItemPath)){
                console.log("File not found: ", cItemPath, "!");
                break;
            }

            try {
                await runCommand(`emcc ${cItemPath} -s EXPORTED_FUNCTIONS='["_main"]' -o ${jsPath}`);

                await run(itemPath, codeContent, jsPath, wasmPath);
            } catch (err) {
                console.log(`Command running failed.....`, err);
            }
        }
    }
}

async function loadWasmFile(js, wasm) {
    // const wasi = new WASI({
    //     // Configure WASI options here
    //     args: [],
    //     env: {},
    // });
    console.log(js)
    const wasmModule = await import(js);
    console.log(":ddfasd")
    const wasmBuffer = await fs.readFile(wasm);
    console.log("gt hedfasd")
    // const buffer = readFileSync(filePath);
    // const wasmModule = await WebAssembly.compile(buffer);
    // return WebAssembly.instantiate(wasmModule, {...wasi.getImports(wasmModule),}); // Returns instance directly
    // Instantiate the WebAssembly module using the glue code's functionality
    const { instance } = await WebAssembly.instantiate(wasmBuffer, wasmModule);

    return instance;
}

async function run(filePath, codeContent, altPathJS, altPathWASM) {
    let failures = [];
    let representation;

    try {
        const tokenizer = new Tokenizer();
        
                const parser = Parser.create({
                    path: filePath,
                    imports: SIMPLE_IMPORTS
                });
        
                parser.on(Parser.EVENT_FAIL, (failure) => {
                    failures = [...failures, failure];
                    representation = null;
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
                        const { name, path:iPath } = value;
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
                            imports: {
                                memory: memory,
                                alloc: state.alloc,
                                dealloc: state.dealloc,
                                merge: state.merge,
                                save: state.save,
                                undo: state.undo,
                                undoPenultimate: state.undoPenultimate,
                                draw: drawer.receiveParams
                            }
                        });
        
                        const moduleCompiled = await WebAssembly.compile(module);
                        const moduleInstance = await WebAssembly.instantiate(moduleCompiled, descriptionImports);
        
                        const floProcedure = moduleInstance.exports[key];

                        const wasmInstance = await loadWasmFile(altPathJS, altPathWASM);

                        if (!wasmInstance.exports.main) {
                            throw new Error('Exported function main not found!!');
                        }
                        const cProcedure = wasmInstance.exports.main;

                        if (floProcedure && cProcedure) {

                            let startFlo = performance.now();
                            floProcedure();
                            let endFlo = performance.now();
                            let timeFlo = endFlo - startFlo;
                            const timeFloDescription = `Flogram execution time: ${timeFlo} milliseconds.`;

                            let startC = performance.now();
                            cProcedure();
                            let endC = performance.now();
                            let timeC = endC - startC;
                            const timeCDescription = `C execution time: ${timeC} milliseconds.`;


                            const resultsPath = path.join(filePath.replace('/code.flo', ''), 'results.txt');
                            fs.writeFile(resultsPath, `${timeCDescription} \n\n ${timeFloDescription}`);
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
        console.error(`Error processing file ${filePath}:`, error);
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

