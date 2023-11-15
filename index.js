import fs from 'fs/promises';
import path from 'path';
import { exec } from 'child_process';
import {
    Parser,
    Tokenizer,
    Compiler,
    MemoryManager,
    Draw,
    SIMPLE_IMPORTS
} from '@munezero/floparser';

const sourceDir = 'Samples';
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
            const wasmPath = path.join(dir, 'code.wasm');
            const cItemPath = path.join(dir, 'code.c');
            if(!await checkFileExists(cItemPath)){
                console.log("File not found: ", cItemPath, "!");
                break;
            }

            try {
                await runCommand(`emcc ${cItemPath} -s EXPORTED_FUNCTIONS='["_main"]' -o ${wasmPath}`);
            } catch (err) {
                console.log(`Command running failed.....`, err);
            }
        }
    }
}

async function run(item, codeContent, jsFunction) {
    let failures = [];
    let representation;

    try {
        const tokenizer = new Tokenizer();
        
                const parser = Parser.create({
                    path: item,
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
                        const { name, path } = value;
                        if (name === 'main' && path === item) {
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
        
                        const procedure = moduleInstance.exports[key];
                        if (procedure) {

                            let startWasm = performance.now();
                            procedure();
                            let endWasm = performance.now();
                            let timeWasm = endWasm - startWasm;
                            const wasmTime = `WebAssembly execution time: ${timeWasm} milliseconds.`;

                            let startJS = performance.now();
                            jsFunction();
                            let endJS = performance.now();
                            let timeJS = endJS - startJS;
                            const jsTime = `JavaScript execution time: ${timeJS} milliseconds.`;

                            const resultsPath = path.join(item, 'results.txt');
                            fs.writeFile(resultsPath, `${jsTime} \n\n ${wasmTime}`);
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
        console.error(`Error processing file ${item}:`, error);
    }
}

(async () => {
    try {
        await readCodeFiles(sourceDir);
        console.log(`'Finished updating performance numbers......`);
    } catch (error) {
        console.error('An error occurred:', error);
    }
})();

