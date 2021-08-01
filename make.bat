rm -r pythontex-files-* 2>NUL
rm  surnames.pytxcode  surnames.pdf 2>NUL

@REM @docker run -w /root -v %cd%:/root/ texlive/texlive xelatex  surnames.tex
@REM @docker run -w /root -v %cd%:/root/ texlive/texlive pythontex surnames.tex
@docker run -w /root -v %cd%:/root/ texlive/texlive xelatex  surnames.tex

@REM rm surnames.aux surnames.log surnames.pytxcode texput.log 2>NUL
@REM rm -r pythontex-files-* 2>NUL

@start surnames.pdf