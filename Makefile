.PHONY:
pdf:
	pdflatex thesis
	bibtex thesis
	pdflatex thesis
	bibtex thesis
	pdflatex thesis
	pdflatex thesis