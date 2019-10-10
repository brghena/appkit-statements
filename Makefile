LATEXRUN ?= ./latexrun

all: brghena-teaching.pdf brghena-research.pdf brghena-diversity.pdf brghena-evaluations.pdf

.PHONY: FORCE
brghena-teaching.pdf: FORCE
	$(LATEXRUN) --latex-args="-shell-escape" -Wall teaching.tex -o $@

brghena-research.pdf: FORCE
	$(LATEXRUN) --latex-args="-shell-escape" -Wall research.tex -o $@

brghena-diversity.pdf: FORCE
	$(LATEXRUN) --latex-args="-shell-escape" -Wall diversity.tex -o $@

brghena-evaluations.pdf: FORCE
	$(LATEXRUN) --latex-args="-shell-escape" -Wall evaluations.tex -o $@

.PHONY: clean
clean:
	$(LATEXRUN) --clean-all
	rm -rf latex.out/

