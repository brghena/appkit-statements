LATEXRUN ?= ./latexrun

all: brghena-teaching.pdf brghena-research.pdf brghena-diversity.pdf brghena-evaluations.pdf

brghena-teaching.pdf: tex/teaching.tex
	$(LATEXRUN) --latex-args="-shell-escape" -Wall $< -o pdfs/$@

brghena-research.pdf: tex/research.tex tex/references.bib
	$(LATEXRUN) --latex-args="-shell-escape" --bibtex-cmd="biber" -Wall $< -o pdfs/$@

brghena-diversity.pdf: tex/diversity.tex
	$(LATEXRUN) --latex-args="-shell-escape" -Wall $< -o pdfs/$@

brghena-evaluations.pdf: tex/evaluations.tex
	$(LATEXRUN) --latex-args="-shell-escape" -Wall $< -o pdfs/eval-cover.pdf
	pdfunite pdfs/eval-cover.pdf evals/combined_evals.pdf pdfs/$@
	rm pdfs/eval-cover.pdf

.PHONY: clean
clean:
	$(LATEXRUN) --clean-all
	rm -rf latex.out/

