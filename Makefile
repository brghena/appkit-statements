LATEXRUN ?= ./latexrun

all: paper.pdf

.PHONY: FORCE
paper.pdf: FORCE
	$(LATEXRUN) --latex-args="-shell-escape" -Wall main.tex -o $@

.PHONY: osx
osx: paper.pdf
	open $<

.PHONY: evince
evince: paper.pdf
	evince $<

.PHONY: clean
clean:
	$(LATEXRUN) --clean-all
	rm -rf latex.out/

