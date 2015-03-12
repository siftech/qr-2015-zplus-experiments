
main.pdf: *.sty *.tex figures/*.gp
	(cd figures; make)
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main
	pdflatex main

clean:
	(cd figures; make clean)
	rm -f main.pdf

