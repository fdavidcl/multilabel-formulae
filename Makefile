EXE=formulae.pdf formulae.tex

default: $(EXE)

%.pdf: %.md
	pandoc $< -o $@

%.tex: %.md
	pandoc $< -o $@ -s
