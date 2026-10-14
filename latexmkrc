# Lets a plain `latexmk` build main.tex with LuaLaTeX into build/.
$pdf_mode = 4;
$out_dir = 'build';
@default_files = ('main.tex');
$lualatex = 'lualatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
