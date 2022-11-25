#!/bin/bash

platex $1.tex
if [ $? -eq 1]
then
    exit 1
fi

platex $1.tex
dvipdfmx $1.dvi
rm $1.log $1.aux $1.dvi
firefox-esr $1.pdf &
