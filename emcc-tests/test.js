import * as fs from 'fs';
import * as path from 'path';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));

async function loadWasmFile(fileName) {
	const filePath = path.join(__dirname, fileName);
	const buffer = fs.readFileSync(filePath);
	const wasmModule = await WebAssembly.compile(buffer);
	return WebAssembly.instantiate(wasmModule, {}); // Returns instance directly
}

async function main() {
	try {
		// wasmInstance is the instance directly
		const wasmInstance = await loadWasmFile('a.out.wasm');

		if (!wasmInstance.exports.factorial) {
			throw new Error('Exported function _factorial not found');
		}

		const factorial = wasmInstance.exports.factorial;

		// Test the factorial function
		const number = 5;
		const result = factorial(number);
		console.log(`Factorial of ${number} is: ${result}`);
	} catch (error) {
		console.error('Error loading or running wasm module:', error);
	}
}

main();
