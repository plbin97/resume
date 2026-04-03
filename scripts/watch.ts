import { resolve } from "path";
import { watch, mkdirSync } from "fs";

const entry = resolve("src/resume.typ");
const output = resolve("dist/resume.pdf");
const fontPath = resolve("src/fonts");

function build() {
  const proc = Bun.spawnSync(["typst", "compile", "--font-path", fontPath, entry, output]);
  if (proc.exitCode !== 0) {
    console.error(`[${new Date().toLocaleTimeString()}] Error:`, proc.stderr.toString());
  } else {
    console.log(`[${new Date().toLocaleTimeString()}] Built ${output}`);
  }
}

mkdirSync(resolve("dist"), { recursive: true });
build();
console.log("Watching for changes...");
watch(resolve("src"), { recursive: true }, (_event, filename) => {
  if (filename && filename.endsWith(".typ")) {
    build();
  }
});
