#!/bin/bash

pandoc introduction.md -t latex -o introduction.pdf --bibliography ../StitchThesis2.bib -H ../disable_float.tex
