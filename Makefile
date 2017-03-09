PAPER=ndn-flow-tr

all:
	pdflatex $(PAPER).tex
	bibtex $(PAPER)
	pdflatex $(PAPER).tex
	pdflatex $(PAPER).tex

view: open
open: all
	open $(PAPER).pdf

.PHONY: clean
clean:
	rm -f *.aux *.log *.blg *.dvi *.bbl

pdf: all
