# Mutational Dotplot
The SARS-Cov-2 mutational dot plot script helps identify the periods in which certain mutations of interest have emerged and continue to appear. The script inputs a file (Dotplot-dataset.xlsx) that contains the number of uncommon mutations that have emerged in more than 1% of the total sequences from a variant calling file, generated from respective sequences. The mutational dot is intended as a post-processing step after trimming, filtering and variant calling. To ensure reproducibility of results, we have provided a variant calling output file (Dataset-Amino-Acid-Mutations.csv) and an input file for the mutational dot-plot (Dotplot-dataset.xlsx). In addition, an output pdf file (Uncommon-new.pdf) has been included in this repository. 

# Packages to install
* library(tidyverse)
* library(lubridate)
* library(gapminder)

# Dependensies
The mutational Dot plot is entirely written in R (V.4.2.0), but requires preprocessing before running the script by the following tools:
* BWA mem (https://github.com/lh3/bwa)
* iVar (https://github.com/andersen-lab/ivar)
* samtools (https://github.com/samtools/samtools)
* LoFreq (https://github.com/CSB5/lofreq)

# Instructions
After running the dependencies and producing the variant calling file, produce the heatmap matrix found on the following link (https://github.com/setshabaTaukobong/Heatmap-Matrix.git) then produce a heatmap using conditional formatting. The heatmap marix allows for one to see patterns of new emerging patterns. Frm the matrix, filter the emerging mutations and quantify them in a seperate spreadsheet (Dotplot-dataset.xlsx). From there, run the script to produce the dotplot. 






