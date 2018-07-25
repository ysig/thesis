OUTPUT_DIR=out

ctm:
	rm -f *.aux *.lof *.idx *.edx *.toc *.log *.lot *.run.xml *.bcf *.out *.bbl *.blg *.gz pyrforos-eps-converted-to.pdf main-blx.bib

clean:
	rm ${OUTPUT_DIR}/*

all: clean
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make main.tex -output-directory=${OUTPUT_DIR}

all_stop: clean
	latexmk -pdf -use-make main.tex -output-directory=${OUTPUT_DIR}

build: ctm
	pdflatex main.tex; biber main; pdflatex main.tex
