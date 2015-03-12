all: \
	vary-kappas-beta-unified-cropped.pdf \
	crowding-sensors-cropped.pdf \
	base-rate-cropped.pdf \
	point-distributions-cropped.pdf \
	bnets1-cropped.pdf \
	bnets2-cropped.pdf \
	funnel-dup-cropped.pdf \
	vary-kappas-cropped.pdf \
	vary-kappas-betas-smoothed-cropped.pdf \
	vary-kappas-betas-unsmoothed-cropped.pdf \
	vary-events-detected-cropped.pdf \
	vary-attack-prob-cropped.pdf \
	vary-kappa-2event-cropped.pdf \
	consolidated-base-rate-cropped.pdf \
	vary-kappas-beta-unified.pdf
	# Cropped all PDFs

clean:
	rm -f vary-kappas-beta-unified.pdf point-distributions.pdf base-rate.pdf crowding-sensors.pdf *-cropped.pdf

%-cropped.pdf: %.pdf
	pdfcrop $< $@

%.pdf: %.gp
	gnuplot $<
