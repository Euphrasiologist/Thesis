#!/bin/bash

pandoc discussion.md -t latex -o discussion.pdf --bibliography ../StitchThesis2.bib -H ../disable_float.tex
