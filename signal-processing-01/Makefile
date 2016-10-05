
all: md.pdf

func.png: func.gpi
	gnuplot func.gpi > func.png

md.pdf: md-latex.md func.png
	pandoc -o md.pdf md-latex.md
clean:
	rm func.png md.pdf
