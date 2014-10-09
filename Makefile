cv.pdf: cv.tex friggeri-cv.cls bibliography.bib
	xelatex cv.tex
	biber cv
	xelatex cv.tex

cv_es.pdf: cv_es.tex friggeri-cv.cls bibliography.bib
	xelatex cv_es.tex
	biber cv_es
	xelatex cv_es.tex

espanol: cv_es.pdf

english: cv.pdf

clean:
	ls | grep "^cv\.[^tex]" | xargs rm    
	ls | grep "^cv_es\.[^tex]" | xargs rm
