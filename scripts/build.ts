import { NodeCompiler } from "@myriaddreamin/typst-ts-node-compiler";
import { resolve } from "path";

const entry = resolve("resume.typ");
const output = resolve("dist/resume.pdf");

const compiler = NodeCompiler.create({ workspace: resolve(".") });
const pdf = compiler.pdf({ mainFilePath: entry });

import { mkdirSync } from "fs";
import { dirname } from "path";
mkdirSync(dirname(output), { recursive: true });
await Bun.write(output, pdf);
await Bun.write(resolve("dist/index.html"), Bun.file(resolve("index.html")));
console.log(`Built ${output}`);
