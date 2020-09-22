#!/bin/bash

pandoc Chapter3.md -t latex -o Chapter3.pdf --bibliography ../Chapter3.bib -H ../disable_float.tex