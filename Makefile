EXE=formulae.pdf

default: $(EXE)

%.pdf: %.md
	pandoc $< -o $@
