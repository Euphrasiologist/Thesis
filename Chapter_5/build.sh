#!/bin/bash

pandoc Chapter5.md -t latex -o Chapter6.pdf --bibliography ../StitchThesis2.bib -H ../disable_float.tex --filter=pandoc-docx-pagebreakpy
