#!/usr/bin/env bash

pandoc title.md -H remove_figcap.tex -o title.pdf

printf "title.pdf done...\n"

pandoc dedication.md -o dedication.pdf

printf "dedication.pdf done...\n"

pandoc declaration.md -o declaration.pdf

printf "declaration.pdf done...\n"

pandoc acknowledgements.md -o acknowledgements.pdf

printf "acknowledgements.pdf done...\n"

pandoc quotes.md -H footer.tex -o quotes.pdf

printf "quotes.pdf done...\n"

pandoc summaries.md -o summaries.pdf

printf "summaries.pdf done...\n"

# poppler pdfunite here

pdfunite title.pdf dedication.pdf declaration.pdf acknowledgements.pdf quotes.pdf summaries.pdf preamble.pdf
