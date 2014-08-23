all: slides.pdf

slides.pdf: slides.tex
	xelatex slides
	xelatex slides

tidy:
	rm -f slides.{aux,log,nav,out,snm,toc}

clean: tidy
	rm -f slides.pdf

