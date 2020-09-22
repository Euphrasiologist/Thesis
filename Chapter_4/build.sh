#!/bin/bash

pandoc Chapter4.md -t latex -o Chapter4.pdf --bibliography ../Chapter4.bib -H ../disable_float.tex