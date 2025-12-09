#!/bin/bash
#SBATCH --partition=cpu-single
#SBATCH --ntasks=16
#SBATCH --time=24:00:00
#SBATCH --mem=64gb

python -m wikiextractor.WikiExtractor enwiki-20251120-pages-articles.xml.bz2 --json -o en_extracted/ --processes 16 --no-templates

