all: markdown pdf

markdown:
	notedown --from notebook --to markdown --run paper.ipynb --render > paper.md

pdf:
	pandoc --latex-engine=xelatex --highlight-style pygments paper.md --bibliography paper.bib -o paper.pdf

clean:
	rm paper.md
	rm paper.pdf
