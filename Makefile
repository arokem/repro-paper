markdown:
	notedown --from notebook --to markdown --run paper.ipynb --render > paper.md

tex:
	pandoc -o paper.pdf --latex-engine=pdflatex paper.md --bibliography paper.bib

all: markdown tex

clean:
	rm paper.md
	rm paper.pdf
