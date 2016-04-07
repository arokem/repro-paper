markdown:
	notedown --from notebook --to markdown --run paper.ipynb --render > paper.md

tex:
	pandoc -N --template=template.tex --latex-engine=xelatex --highlight-style pygments paper.md --bibliography paper.bib --variable mainfont="Helvetica" --variable sansfont="Helvetica" --variable monofont="Consolas" --variable fontsize=12pt -o paper.pdf

all: markdown tex

clean:
	rm paper.md
	rm paper.pdf
