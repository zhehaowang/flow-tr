PAPER=ndn-flow-tr

all:
	pdflatex --shell-escape $(PAPER).tex
	bibtex $(PAPER)
	pdflatex --shell-escape $(PAPER).tex
	pdflatex --shell-escape $(PAPER).tex

view: open
open: all
	open $(PAPER).pdf

.PHONY: clean
clean:
	rm -f *.aux *.log *.blg *.dvi *.bbl

pdf: all
