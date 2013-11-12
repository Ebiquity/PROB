.PHONY: all clean view

all: slides.pdf

%.tex: %.md
	wiki2beamer  $< > $@

SECTIONS = intro.tex causes.tex 


clean:
	-rm -f slides.aux $(SECTIONS)
	-rm -f *.aux 
	-rm -f *.log 
	-rm -f *.nav 
	-rm -f *.out 
	-rm -f *.snm 
	-rm -f *.toc 
	-rm -f slides.pdf 


slides.pdf: slides.tex  $(SECTIONS) 
	pdflatex  slides
	pdflatex  slides

view: slides.pdf
	evince slides.pdf

