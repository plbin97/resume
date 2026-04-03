# Resume

My resume, built with [Typst](https://typst.app/) and compiled via [typst.ts](https://github.com/Myriad-Dreamin/typst.ts).

## Prerequisites

- [Bun](https://bun.sh/) (v1.0+)

## Setup

```bash
bun install
```

## Scripts

| Command | Description |
|---|---|
| `bun run build` | Compile `resume.typ` to `dist/resume.pdf` |
| `bun run dev` | Watch for changes + live reload in browser |
| `bun run watch` | Watch and recompile on `.typ` file changes |
| `bun run clean` | Remove the `dist/` directory |

## Deployment

The GitHub Actions workflow automatically compiles and deploys the resume to GitHub Pages on every push to `main`.
