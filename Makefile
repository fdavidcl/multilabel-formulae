EXE=formulae.pdf formulae.tex

default: $(EXE)

%.pdf: %.md
	pandoc $< -o $@ --filter pandoc-eqnos --latex-engine xelatex

%.tex: %.md
	pandoc $< -o $@ -s --filter pandoc-eqnos  --latex-engine xelatex
