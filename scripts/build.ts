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

const pkg = await Bun.file(resolve("package.json")).json();
const html = await Bun.file(resolve("index.html")).text();
await Bun.write(resolve("dist/index.html"), html.replaceAll("{{VERSION}}", pkg.version));
console.log(`Built ${output} (v${pkg.version})`);
