
main.pdf: *.sty *.tex figures/*.gp
	(cd figures; make)
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main
	pdflatex main

count:
	texcount main.tex -inc -nobib -sum
