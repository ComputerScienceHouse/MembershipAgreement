# Source files
TEXFILES=agreement.tex

# Binaries
PDFLATEX=pdflatex

# Generated files
PDFFILES=$(TEXFILES:.tex=.pdf)

.PHONY: all clean

all:
	$(PDFLATEX) `git log -1 --date=short --format=format:'\newcommand{\RevisionInfo}{Revision %h on %ad}'` '\input{agreement.tex}'
	$(PDFLATEX) `git log -1 --date=short --format=format:'\newcommand{\RevisionInfo}{Revision %h on %ad}'` '\input{agreement.tex}'

clean:
	$(RM) $(PDFFILES)

