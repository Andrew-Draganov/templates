#!/bin/bash

pdflatex $@.tex
bibtex $@.aux
pdflatex $@.tex
pdflatex $@.tex
