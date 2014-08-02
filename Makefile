default: pdf
all: clean pdf html

pdf: clean kulasthree.pdf

html:
	latex2html -html_version 4.0,latin1,unicode kulasthree.tex

%.pdf: kulasthree.tex
	xelatex $<
	xelatex $<	# to include generated ToC

clean:
	rm -f kulasthree.pdf kulasthree.aux kulasthree.toc kulasthree.log
