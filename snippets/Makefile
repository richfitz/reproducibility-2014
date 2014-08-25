TARGETS = \
	$(shell ls make_*tex | sed 's/tex$$/pdf/g') \
	$(shell ls knitr_*tex | sed 's/tex$$/pdf/g') \
	$(shell ls packrat_*tex | sed 's/tex$$/pdf/g') \
	$(shell ls travis_*tex | sed 's/tex$$/pdf/g')

all: ${TARGETS}

knitr_graphics_cars.pdf: knitr_graphics_cars.R
	Rscript knitr_graphics_cars.R
knitr_graphics_output.pdf: knitr_graphics_cars.pdf

%.pdf: %.tex
	xelatex $<

tidy:
	rm -f *.{aux,log}

clean: tidy
	rm -f ${TARGETS}
