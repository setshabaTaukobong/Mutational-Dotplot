# Mutational-Dotplot
The SARS-Cov-2 mutational dot plot script helps identify the periods in which certain mutations of interest have emerged and continue to appear. The script inputs a file (Dotplot-dataset.xlsx) that contains the number of uncommon mutations that have emerged in more than 1% of the total sequences from a variant calling file, generated from respective sequences. Mutational dot is intended as a post-processing step after trimming, filtering and variant calling. To ensure reproducibility of results, we have provided a variant calling output file (Dataset-Amino-Acid-Mutations.csv) and an input file (Dotplot-dataset.xlsx) accompanied by output pdf file (Uncommon-new.pdf), in this repository. 

**# Installation**
The following packages need to be nstalled before running the script:
library(tidyverse)
library(lubridate)
library(gapminder)






