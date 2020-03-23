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

INK = inkscape  --without-gui --export-type=eps  --export-ignore-filters
convert_eps:
	mkdir -p figures_PLoS-CB/
	$(INK) figures_PLoS-CB/Pasturel_etal2020_PLoS-CB-figure1.pdf -o figures_PLoS-CB/Pasturel_etal2020_PLoS-CB-figure1.eps
	$(INK) figures_PLoS-CB/Pasturel_etal2020_PLoS-CB-figure2.pdf -o figures_PLoS-CB/Pasturel_etal2020_PLoS-CB-figure2.eps
	$(INK) figures_PLoS-CB/Pasturel_etal2020_PLoS-CB-figure3.pdf -o figures_PLoS-CB/Pasturel_etal2020_PLoS-CB-figure3.eps
	$(INK) figures_PLoS-CB/Pasturel_etal2020_PLoS-CB-figure4.pdf -o figures_PLoS-CB/Pasturel_etal2020_PLoS-CB-figure4.eps
	$(INK) figures_PLoS-CB/Pasturel_etal2020_PLoS-CB-figure5.pdf -o figures_PLoS-CB/Pasturel_etal2020_PLoS-CB-figure5.eps


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
