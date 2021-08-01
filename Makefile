build: surnames.pdf
	rm -r pythontex-files-* 2>/dev/null
	rm  surnames.pytxcode  surnames.pdf 2>/dev/null

	docker run -w /root -v %cd%:/root/ texlive/texlive xelatex  surnames.tex

	rm surnames.aux surnames.log surnames.pytxcode texput.log 2>/dev/null
	rm -r pythontex-files-* 2>/dev/null

clear: 
	rm -r pythontex-files-* 2>/dev/null
	rm surnames.aux surnames.log surnames.pytxcode texput.log 2>/dev/null
	rm surnames.pdf 2>/dev/null

