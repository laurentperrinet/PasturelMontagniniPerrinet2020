################################################
SRC = Pasturel_etal2020
default: $(SRC)_trackedchanges.pdf
pdf: $(SRC).pdf
diff: $(SRC)_trackedchanges.pdf
################################################
LATEXMK = latexmk -bibtex -pdf
################################################

$(SRC).pdf: $(SRC).tex $(SRC).bib
	$(LATEXMK) $(SRC).tex

response_to_reviewers.pdf: response_to_reviewers.tex $(SRC).tex $(SRC).bib
	$(LATEXMK) response_to_reviewers.tex

cover.pdf: cover.tex $(SRC).tex $(SRC).bib
	$(LATEXMK) cover.tex

# post-production
$(SRC)_trackedchanges.pdf: $(SRC).tex $(SRC).bib Pasturel_etal2019.tex
	latexdiff --graphics-markup=both Pasturel_etal2019.tex $(SRC).tex > $(SRC)_trackedchanges.tex
	$(LATEXMK) $(SRC)_trackedchanges.tex
	open $(SRC)_trackedchanges.pdf

################################################

edit_linux: linux_edit
linux_edit:
	texmaker ${SRC}.tex &
	gedit Makefile &

edit_mac: mac_edit
mac_edit:
	a

################################################
touch:
	touch *.tex

clean:
	rm -f *.dvi *.ps *.out *.log *.aux *.bbl *.blg *.snm *.fls *.nav *.toc *.fff *.synctex.gz* *.fdb_latexmk *.run.xml *.bcf

.PHONY:  all clean
################################################
