all: slides.pdf slides_brief.pdf

%.pdf: %.tex
# evil but avoids always rebuilding.  Things like this are why make is
# annoying to use in practice...
	make diagrams snippets
	xelatex $<
	xelatex $<

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
