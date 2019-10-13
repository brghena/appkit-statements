LATEXRUN ?= ./latexrun

all: brghena-teaching.pdf brghena-research.pdf brghena-diversity.pdf brghena-evaluations.pdf brghena-references.pdf cover_letters

brghena-teaching.pdf: statements/teaching.tex
	$(LATEXRUN) --latex-args="-shell-escape" -Wall $< -o pdfs/$@

brghena-research.pdf: statements/research.tex statements/references.bib
	$(LATEXRUN) --latex-args="-shell-escape" --bibtex-cmd="biber" -Wall $< -o pdfs/$@

brghena-diversity.pdf: statements/diversity.tex
	$(LATEXRUN) --latex-args="-shell-escape" -Wall $< -o pdfs/$@

brghena-evaluations.pdf: evals/evaluations.tex
	$(LATEXRUN) --latex-args="-shell-escape" -Wall $< -o pdfs/eval-cover.pdf
	pdfunite pdfs/eval-cover.pdf evals/combined_evals.pdf pdfs/$@
	rm pdfs/eval-cover.pdf

brghena-references.pdf: references/references.tex
	$(LATEXRUN) --latex-args="-shell-escape" -Wall $< -o pdfs/$@

.PHONY: force
cover_letters: force
	python3 cover_letters/build_script.py

.PHONY: clean
clean:
	rm -rf latex.out/

