# Thesis template

A ready-to-write LaTeX thesis. Appendix A in the PDF shows how to write
equations, theorems, references, citations, tables, algorithms and code.

## 1. Install (once)

| | Windows | macOS |
|---|---|---|
| LaTeX | [TeX Live](https://tug.org/texlive/windows.html) (`install-tl-windows.exe`) | [MacTeX](https://tug.org/mactex/) |
| Editor | [VS Code](https://code.visualstudio.com/) | [VS Code](https://code.visualstudio.com/) |

Use TeX Live, not MiKTeX, on Windows: it includes Perl, latexmk and biber, so nothing else is needed.
The install is large and takes 30–60 minutes. Restart your computer afterwards.

## 2. Start your thesis

1. Click **Use this template** → **Create a new repository** at the top of this page.
2. Clone your new repository and open the folder in VS Code.
3. Click **Install** when VS Code suggests the recommended extensions.
4. Open `main.tex` and save it. The PDF opens in a tab next to it.

## 3. Write

- Your name, title and university: `config/metadata.tex`
- Your text: `chapters/`
- Your images: `figures/`
- Your references: `references.bib`

Every save rebuilds the PDF. Ctrl/Cmd + click in the PDF jumps to the source line.

**Overleaf instead?** Download this repository as a zip, choose *New Project → Upload Project*,
then set *Menu → Compiler* to **LuaLaTeX**.

## Change the look

- Font: uncomment one block in `config/fonts.tex`
- Language: `british` at the top of `config/preamble.tex` (e.g. `american`, `norsk`)
- Colours: `config/colors.tex`

## If something goes wrong

- **First build takes minutes:** normal, LuaLaTeX builds a font cache once.
- **`latexmk` not found:** restart your computer after installing TeX Live.
- **Odd errors after a failed build:** delete the `build` folder and save again.
- **Windows:** keep the project outside OneDrive, which locks build files while syncing.
- **Need to see the error:** click the ✓/✗ in the bottom-left status bar, or open `build/main.log`.
