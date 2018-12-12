#!/bin/bash
MAIN=CAMLroot
BIB=biblio

mkdir arxiv || { echo "error, you need to (rmdir arxiv)"; exit 1; }
rm -f arxiv.zip

cp $MAIN.tex arxiv/

cp $BIB.bib arxiv/ # (unused) source .bib, for reference
stat $BIB.bbl > /dev/null || { echo "you need to run bibtex first"; exit 1; }
cp $BIB.bbl arxiv/

cp easychair.cls arxiv/

(
    echo "pdflatex $MAIN.tex"
    echo "pdflatex $MAIN.tex"
) > arxiv/build.sh

zip -r arxiv arxiv
echo "feel free to test the packed source in arxiv/, archive is arxiv.zip"
