LATEXRUN ?= ./latexrun

all: brghena-teaching.pdf brghena-research.pdf brghena-diversity.pdf

.PHONY: FORCE
brghena-teaching.pdf: FORCE
	$(LATEXRUN) --latex-args="-shell-escape" -Wall teaching.tex -o $@

.PHONY: FORCE
brghena-research.pdf: FORCE
	$(LATEXRUN) --latex-args="-shell-escape" -Wall research.tex -o $@

.PHONY: FORCE
brghena-diversity.pdf: FORCE
	$(LATEXRUN) --latex-args="-shell-escape" -Wall diversity.tex -o $@

.PHONY: clean
clean:
	$(LATEXRUN) --clean-all
	rm -rf latex.out/

