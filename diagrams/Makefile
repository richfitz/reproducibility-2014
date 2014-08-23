INKSCAPE = /Applications/Inkscape.app/Contents/Resources/bin/inkscape

TARGETS = $(shell ls *.svg | sed 's/svg$$/pdf/g')

all: ${TARGETS}

%.pdf: %.svg
	${INKSCAPE} -f $< -A $@

clean:
	rm -f ${TARGETS}
