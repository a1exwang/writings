all: main.md x.jpg
	pandoc -V mainfont="WenQuanYi Micro Hei" --latex-engine=xelatex -o main.pdf main.md

x.jpg: hw.R
	R CMD BATCH hw.R
