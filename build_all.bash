#!/usr/bin/env bash

# make the preamble, which reside in a separate directory

printf "Making preamble...\n"

pandoc ./Preamble/title.md -H ./Preamble/remove_figcap.tex -o ./Preamble/title.pdf

printf "title.pdf done...\n"

pandoc ./Preamble/dedication.md -o ./Preamble/dedication.pdf

printf "dedication.pdf done...\n"

pandoc ./Preamble/declaration.md -o ./Preamble/declaration.pdf

printf "declaration.pdf done...\n"

pandoc ./Preamble/acknowledgements.md -o ./Preamble/acknowledgements.pdf

printf "acknowledgements.pdf done...\n"

pandoc ./Preamble/quotes.md -H ./Preamble/footer.tex -o ./Preamble/quotes.pdf

printf "quotes.pdf done...\n"

pandoc ./Preamble/summaries.md -o ./Preamble/summaries.pdf

printf "summaries.pdf done...\n"

printf "Preamble made...\n"

# poppler pdfunite here

pdfunite ./Preamble/title.pdf \
./Preamble/dedication.pdf \
./Preamble/declaration.pdf \
./Preamble/acknowledgements.pdf \
./Preamble/quotes.pdf \
./Preamble/summaries.pdf \
./Preamble/preamble.pdf

# make the thesis itself.

printf "Generating thesis...\n"

pandoc +RTS -K512m -RTS "meta.yaml" \
"Introduction/introduction.md" \
"Chapter_2/Chapter2.md" \
"Chapter_3/Chapter3.md" \
"Chapter_4/Chapter4.md" \
"Chapter_5/Chapter5.md" \
"Chapter_6/Chapter6.md" \
"Discussion/discussion.md" \
-V geometry:"top=3cm, bottom=4cm, left=2.5cm, right=2.5cm" \
-H ./disable_float.tex \
-H ./landscape.tex \
-H ./table_cap_width.tex \
--resource-path=.:"Introduction":"Chapter_2":"Chapter_3":"Chapter_4":"Chapter_5":"Chapter_6":"Chapter_7":"Discussion" \
--bibliography "StitchThesis2.bib" \
--csl "american-journal-of-botany.csl" \
--output "MBrown_Thesis.pdf"

printf "Thesis made, removing first page...\n"

pdftk MBrown_Thesis.pdf cat 2-end output MBrown_Thesis_notitle.pdf

printf "Making appendices...\n"

pandoc "appendices.yaml" \
./Appendices/appendices.md \
--bibliography "StitchThesis2.bib" \
-o ./Appendices/appendices.pdf \
-H ./Appendices/landscape.tex \
-H ./Appendices/table_cap_width.tex

printf "Appendices made...\n"

printf "Merging preamble, main thesis, and appendices...\n"

pdftk ./Preamble/preamble.pdf \
./MBrown_Thesis_notitle.pdf \
./Appendices/appendices.pdf \
cat output MBrown_Thesis_all.pdf

printf "Removing intermediate files...\n"

rm MBrown_Thesis.pdf
rm MBrown_Thesis_notitle.pdf

printf "Done!\n"