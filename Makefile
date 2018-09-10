OUTPUT_DIR=out

all: clean build clean

build:
	pdflatex main.tex; biber main; pdflatex main.tex

clean:
	rm -f *.aux *.lof *.idx *.edx *.toc *.log *.lot *.run.xml *.bcf *.out *.bbl *.blg *.gz pyrforos-eps-converted-to.pdf main-blx.bib
