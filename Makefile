all: slides.pdf

slides.pdf: slides.tex
# evil but avoids always rebuilding.  Things like this are why make is
# annoying to use in practice...
	make diagrams snippets
	xelatex slides
	xelatex slides

diagrams:
	make -C diagrams

snippets:
	make -C snippets

tidy:
	rm -f slides.{aux,log,nav,out,snm,toc,vrb}

clean: tidy
	rm -f slides.pdf
	make -C diagrams clean
	make -C snippets clean

.PHONY: diagrams snippets
