import { NodeCompiler } from "@myriaddreamin/typst-ts-node-compiler";
import { watch, mkdirSync } from "fs";
import { dirname } from "path";
import { resolve } from "path";

const entry = resolve("src/resume.typ");
const output = resolve("dist/resume.pdf");

function build() {
  try {
    const compiler = NodeCompiler.create({ workspace: resolve(".") });
    const pdf = compiler.pdf({ mainFilePath: entry });
    Bun.write(output, pdf);
    console.log(`[${new Date().toLocaleTimeString()}] Built ${output}`);
  } catch (err: unknown) {
    const message = err instanceof Error ? err.message : String(err);
    console.error(`[${new Date().toLocaleTimeString()}] Error:`, message);
  }
}

mkdirSync(dirname(output), { recursive: true });
build();
console.log("Watching for changes...");
watch(resolve("src"), { recursive: true }, (_event, filename) => {
  if (filename && filename.endsWith(".typ")) {
    build();
  }
});
