cv.pdf: cv.tex friggeri-cv.cls bibliography.bib
	xelatex --jobname=cv_es "\def\isspanish{1} \input{cv.tex}"; xelatex --jobname=cv cv.tex
	biber cv
	biber cv_es
	xelatex --jobname=cv_es "\def\isspanish{1} \input{cv.tex}"; xelatex --jobname=cv cv.tex

clean:
	ls | grep "^cv\.[^tex]" | xargs rm
	ls | grep "^cv_es\.[^tex]" | xargs rm
