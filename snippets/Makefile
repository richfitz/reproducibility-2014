TARGETS = $(shell ls make_*tex | sed 's/tex$$/pdf/g')

all: ${TARGETS}

%.pdf: %.tex
	xelatex $<

clean:
	rm -f *.{aux,log}
	rm -f ${TARGETS}
