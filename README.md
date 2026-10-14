# Thesis template

🇳🇴 [Norsk versjon](README.no.md)

A ready-to-write LaTeX thesis. Appendix A in the PDF shows how to write
equations, theorems, references, citations, tables, algorithms and code.

## 1. Install (once)

| | Windows | macOS |
|---|---|---|
| LaTeX | [TeX Live](https://tug.org/texlive/windows.html) (`install-tl-windows.exe`) | [MacTeX](https://tug.org/mactex/) |
| Editor | [VS Code](https://code.visualstudio.com/) | [VS Code](https://code.visualstudio.com/) |

Use TeX Live, not MiKTeX, on Windows: it includes Perl, latexmk and biber, so nothing else is needed.
The install is large and takes 30–60 minutes. Restart your computer afterwards.

## 2. Create your repository

1. Sign in to [GitHub](https://github.com) (create a free account if needed).
2. At the top of this page, click **Use this template** → **Create a new repository**.
3. Name it (e.g. `master-thesis`), choose **Private**, and click **Create repository**.

## 3. Set up VS Code

1. In VS Code, press Ctrl/Cmd + Shift + P, run **Git: Clone**, and pick your new repository
   (sign in to GitHub when asked).
2. Open the cloned folder when VS Code asks.
3. Click **Install** when VS Code suggests the recommended extensions
   (LaTeX Workshop, LTeX+ spell checker, EditorConfig).
4. Open `main.tex` and save it. The PDF opens in a tab next to it.

Everything else (build recipe, output folder, formatting) is already configured in `.vscode/`.
Save your progress with the **Source Control** tab: write a message, **Commit**, then **Sync**.

## 4. Optional: connect Overleaf

Overleaf can sync with your GitHub repository, so you can edit in either place.
This needs Overleaf Premium. NTNU students get it free: sign in to Overleaf with your NTNU account
(**Log in** → **Log in through your institution**).

1. In Overleaf: **Account Settings** → **Integrations** → link **GitHub**.
2. **New Project** → **Import from GitHub** → pick your repository.
3. **Menu** → **Compiler**: **LuaLaTeX**.
4. To move changes between the two, use **Menu** → **GitHub** in Overleaf
   (push to GitHub / pull from GitHub), and **Sync** in VS Code.

Without Premium: download your repository as a zip and use **New Project** → **Upload Project**
(no automatic sync).

## 5. Write

- Your name, title and university: `config/metadata.tex`
- Your text: `chapters/`
- Your images: `figures/`
- Your references: `references.bib`

Every save rebuilds the PDF. Ctrl/Cmd + click in the PDF jumps to the source line.

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
