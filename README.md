# Resume

My resume, built with [Typst](https://typst.app/).

**View online:** https://plbin97.github.io/resume/

> Want to use this for your own resume? Feel free to [fork this repo](https://github.com/plbin97/resume/fork).

## Prerequisites

- [Bun](https://bun.sh/) (v1.0+)
- [Typst](https://typst.app/)
  - Windows: `winget install --id Typst.Typst`
  - macOS: `brew install typst`
  - Linux: `sudo apt install typst`

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

## License

[MIT](LICENSE)
