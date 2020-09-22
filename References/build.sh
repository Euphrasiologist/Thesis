#!/bin/bash

pandoc bib.tex -o bib.pdf --bibliography ../StitchThesis2.bib -V geometry:"top=3cm, bottom=4cm, left=2.5cm, right=2.5cm"
