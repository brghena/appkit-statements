# appkit-statements
Statements for academic applications. Includes Teaching Statement, Research
Statement, Diversity, Equity, & Inclusion Statement, and Summary of Teaching
Evaluations.

### Layout

The main tex file is located in `tex/paper.tex`, and the references are located
in `tex/references.bib`. Each section of the paper are placed in separate tex
files in `tex/`.

Plots and images go in subdirectories within `fig/`, each with their own
Makefile. The subdirectory Makefiles should be manually run whenever the figure
data or build scripts are updated and the resulting PDF should be committed.

### Requirements

 * latex and bibtex
 * Make
 * Python3 (for running latexrun)
 * Gnuplot (for plot generation)

### Building

To build paper.pdf in the main directory:

```
 $ make
```

To cleanup after yourself:

```
 $ make clean
```

We use Austin Clements' [`latexrun`](https://github.com/aclements/latexrun) as a
wrapper around the LaTex build process. It is embedded in the repository as a
Python3 script, so there are no external dependencies beyond Python. Refer to
the README in the `latexrun` source repository or run `./latexrun --help` for
details.

