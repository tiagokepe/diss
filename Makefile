install: dissertacao.pdf


#dissertacao.df: dissertacao.dvi
#	dvips -o dissertacao.ps dissertacao.dvi


clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.bak
	rm -f *.log
	rm -f *.blg
	rm -f *.toc
	rm -f *.lot
	rm -f *.lof
	rm -f *.dvi
	rm -f *.idx
	rm -f *.ilg
	rm -f *.ind
	rm -f *.out
	rm -f *.pyg
	rm -f *~

dissertacao.pdf: dissertacao.tex introduction.tex background.tex kepe.bbl
	pdflatex -shell-escape dissertacao.tex
	pdflatex -shell-escape dissertacao

kepe.bbl: kepe.bib
	pdflatex -shell-escape dissertacao
	bibtex dissertacao

