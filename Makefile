TEX = xelatex

SOURCES = $(wildcard *.tex)
MAINSOURCE = mutation.tex
INDEXFILE = $(MAINSOURCE:.tex=.idx)
TARGET = $(MAINSOURCE:.tex=.pdf)

mutation: $(SOURCES)
	$(TEX) $(MAINSOURCE)

index: $(INDEXFILE)
	makeindex $<

view: $(TARGET)
	evince $<

.PHONY : clean
clean:
	/bin/rm -f  *.dvi *.log *.aux *~ *.fdb_latexmk \
                    *.pdf *.toc *.ind *.idx *.ilg *.lof *.lot

