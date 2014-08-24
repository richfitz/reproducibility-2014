cairo_pdf("knitr_graphics_cars.pdf", width=4, height=2,
          family="Yanone Kaffeesatz", bg="transparent")
par(mar=c(2.2, 2.2, .5, .5), tcl=0, mgp=c(1, 0.2, 0),
    fg="white", col.lab="white", col.axis="white")
plot(cars, xaxt="n", yaxt="n", bty="l", pch=19)
lines(lowess(cars), col="#6baed6", lwd=4)
axis(1, c(5, 25), col=NA)
axis(2, c(0, 120), las=1, col=NA)
dev.off()
