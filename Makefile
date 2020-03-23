################################################
SRC = Pasturel_etal2020
# SRC_rev = Pasturel_etal2019
SRC_rev = Pasturel_etal2020_R1
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
$(SRC)_trackedchanges.pdf: $(SRC)_PLoS-CB.tex $(SRC).bib $(SRC_rev).tex
	latexdiff --graphics-markup=both $(SRC_rev).tex $(SRC)_PLoS-CB.tex > $(SRC)_trackedchanges.tex
	$(LATEXMK) $(SRC)_trackedchanges.tex
	open $(SRC)_trackedchanges.pdf

convert_eps:
	mkdir -p figures_eps


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
