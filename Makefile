OUTPUT_DIR=out

build: clean
	pdflatex main.tex; biber main; pdflatex main.tex

clean:
	rm -f *.aux *.lof *.idx *.edx *.toc *.log *.lot *.run.xml *.bcf *.out *.bbl *.blg *.gz pyrforos-eps-converted-to.pdf main-blx.bib
