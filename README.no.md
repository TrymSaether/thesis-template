# Mal for masteroppgave

🇬🇧 [English version](README.md)

En LaTeX-oppgave som er klar til å skrive i. Tillegg A i PDF-en viser hvordan du skriver
likninger, teoremer, kryssreferanser, kildehenvisninger, tabeller, algoritmer og kode.

## 1. Installer (én gang)

| | Windows | macOS |
|---|---|---|
| LaTeX | [TeX Live](https://tug.org/texlive/windows.html) (`install-tl-windows.exe`) | [MacTeX](https://tug.org/mactex/) |
| Editor | [VS Code](https://code.visualstudio.com/) | [VS Code](https://code.visualstudio.com/) |

Bruk TeX Live, ikke MiKTeX, på Windows: den inneholder Perl, latexmk og biber, så du trenger ikke noe mer.
Installasjonen er stor og tar 30–60 minutter. Start datamaskinen på nytt etterpå.

## 2. Lag ditt eget repository

1. Logg inn på [GitHub](https://github.com) (lag en gratis konto hvis du ikke har en).
2. Øverst på denne siden: klikk **Use this template** → **Create a new repository**.
3. Gi det et navn (f.eks. `masteroppgave`), velg **Private** og klikk **Create repository**.

## 3. Sett opp VS Code

1. I VS Code: trykk Ctrl/Cmd + Shift + P, kjør **Git: Clone** og velg det nye repositoryet ditt
   (logg inn på GitHub når du blir spurt).
2. Åpne den klonede mappen når VS Code spør.
3. Klikk **Install** når VS Code foreslår de anbefalte utvidelsene
   (LaTeX Workshop, EditorConfig).
4. Åpne `main.tex` og lagre. PDF-en åpnes i en fane ved siden av.

Alt annet (byggeoppsett, mappe for utdata, formatering) er allerede satt opp i `.vscode/`.
Lagre fremgangen i **Source Control**-fanen: skriv en melding, **Commit**, deretter **Sync**.

## 4. Valgfritt: koble til Overleaf

Overleaf kan synkronisere med GitHub-repositoryet ditt, så du kan redigere begge steder.
Dette krever Overleaf Premium. NTNU-studenter får det gratis: logg inn på Overleaf med
NTNU-kontoen din (**Log in** → **Log in through your institution**).

1. I Overleaf: **Account Settings** → **Integrations** → koble til **GitHub**.
2. **New Project** → **Import from GitHub** → velg repositoryet ditt.
3. **Menu** → **Compiler**: **LuaLaTeX**.
4. For å flytte endringer mellom de to: bruk **Menu** → **GitHub** i Overleaf
   (push til / pull fra GitHub), og **Sync** i VS Code.

Uten Premium: last ned repositoryet som zip og bruk **New Project** → **Upload Project**
(ingen automatisk synkronisering).

## 5. Skriv

- Navn, tittel og universitet: `config/metadata.tex`
- Teksten din: `chapters/`
- Bilder: `figures/`
- Kilder: `references.bib`

PDF-en bygges på nytt hver gang du lagrer. Ctrl/Cmd + klikk i PDF-en hopper til riktig linje i kildekoden.

## Endre utseendet

- Skrifttype: fjern `%` foran én av blokkene i `config/fonts.tex`
- Språk: `british` øverst i `config/preamble.tex` (f.eks. `norsk`, `nynorsk`, `american`)
- Farger: `config/colors.tex`

## Hvis noe går galt

- **Første bygg tar flere minutter:** helt normalt, LuaLaTeX lager en skrift-cache én gang.
- **`latexmk` blir ikke funnet:** start datamaskinen på nytt etter at TeX Live er installert.
- **Rare feil etter et mislykket bygg:** slett `build`-mappen og lagre på nytt.
- **Windows:** ikke legg prosjektet i OneDrive, som låser byggefiler mens den synkroniserer.
- **Se feilmeldingen:** klikk ✓/✗ nederst til venstre i statuslinjen, eller åpne `build/main.log`.
