import { resolve } from "path";
import { mkdirSync } from "fs";

const entry = resolve("src/resume.typ");
const output = resolve("dist/resume.pdf");
const fontPath = resolve("src/fonts");

mkdirSync(resolve("dist"), { recursive: true });

const proc = Bun.spawnSync(["typst", "compile", "--font-path", fontPath, entry, output]);

if (proc.exitCode !== 0) {
  console.error(proc.stderr.toString());
  process.exit(1);
}

await Bun.write(resolve("dist/index.html"), Bun.file(resolve("index.html")));
console.log(`Built ${output}`);
