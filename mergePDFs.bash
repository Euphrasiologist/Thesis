#!/usr/bin/env bash

# pdfunite works but removes links
#pdfunite ./Preamble/preamble.pdf \
#./MBrown_Thesis.pdf \
#./Supplementary/supplementary.pdf \
#MBrown_Thesis_all.pdf

pdftk ./Preamble/preamble.pdf \
./MBrown_Thesis.pdf \
./Appendices/appendices.pdf \
cat output MBrown_Thesis_all.pdf
