#!/bin/bash

pandoc Chapter2.md -t latex -o Chapter2.pdf --bibliography ../Chapter2.bib -H ../disable_float.tex 
