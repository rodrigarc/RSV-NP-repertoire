# Multivalent Antigen Display on Nanoparticles Diversifies B Cell Responses

#### Sebastian Ols, Klara Lenart*, Rodrigo Arcoverde Cerveira*, Rebecca Skotheim, Annika Philomin, Jana Kochmann, Martin Corcoran, Alberto Cagigi, Natalie Brunette, Brooke Fiala, Samuel Wrenn, Jessica Marcandalli, Fredrika Hellgren, Elizabeth A. Thompson, Ang Lin, Ganesh E. Phad, Barney S. Graham, Laurent Perez, Andrew J. Borst, Gunilla B. Karlsson Hedestam, Tracy J. Ruckwardt, Neil P. King and Karin Loré
*equal contribution

## Table of contents
* [Abstract](#abstract)
* [General info](#general-info)
* [Repo description](#repo-description)
* [Reproducibility](#reproducibility)

## Abstract
Nanoparticles for multivalent display and delivery of vaccine antigens have emerged
as a promising avenue for enhancing B cell responses to protein subunit vaccines. Here, we evaluated B cell responses in rhesus macaques immunized with prefusion- stabilized Respiratory Syncytial Virus (RSV) F glycoprotein trimer compared to nanoparticles displaying 10 or 20 copies of the same antigen. We show that multivalent display skews antibody specificities and drives epitope-focusing of responding B cells. Antibody cloning and repertoire sequencing revealed that focusing was driven by expansion of clonally distinct B cells through recruitment of diverse precursors. We identified two antibody lineages that developed either ultrapotent neutralization or pneumovirus cross-neutralization from precursor B cells with low initial affinity for the RSV-F immunogen. This suggests that increased avidity by multivalent display facilitates the activation and recruitment of these cells. Diversification of the B cell response by the nanoparticle platform has broad implications for vaccine design.

## General info
- This repository contains the code usef for the RSV immunoglobulin repertoire sequencing data analysis. This includes figure 5,7B,7F, S5, S6F data processing and analysis.

## Repo description
- The raw data is available in NCBI BioProject: PRJNA888955
- Here you have access only to the source code used, the code will automatically download the processed data from the zenodo repository. 
- The main scripts are under `src folder` as `rsv_clonotype_processing.Rmd` and `rsv_clonotype_analysis.Rmd`, the first one is aimed into more computationally intensive processing while the second contain the code for plotting and analysis that were used in the figures mentioned above.
- Some small data can be found in this repo, the databases (V, D, and J genes) from different authors.

## Reproducibility
- All the bioinformatics analysis performed by Rodrigo Arcoverde can be reproduced through snakemake
- Run "snakemake" within this folder and all the data will be generated
