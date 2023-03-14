# Multivalent Antigen Display on Nanoparticles Diversifies B Cell Responses

#### Sebastian Ols, Klara Lenart‡, Rodrigo Arcoverde Cerveira‡, Rebecca Skotheim, Annika Philomin, Jana Kochmann, Martin Corcoran, Alberto Cagigi, Natalie Brunette, Brooke Fiala, Samuel Wrenn, Jessica Marcandalli, Fredrika Hellgren, Elizabeth A. Thompson, Ang Lin, Ganesh E. Phad, Barney S. Graham, Laurent Perez, Andrew J. Borst, Gunilla B. Karlsson Hedestam, Tracy J. Ruckwardt, Neil P. King and Karin Loré
‡equal contribution

## Table of contents
* [Abstract](#abstract)
* [General info](#general-info)
* [Repo description](#repo-description)
* [Plots and code](#plots-and-code)
* [Reproducibility](#reproducibility)
* [License](#license)

## Abstract
Nanoparticles for multivalent display and delivery of vaccine antigens have emerged
as a promising avenue for enhancing B cell responses to protein subunit vaccines. Here, we evaluated B cell responses in rhesus macaques immunized with prefusion- stabilized Respiratory Syncytial Virus (RSV) F glycoprotein trimer compared to nanoparticles displaying 10 or 20 copies of the same antigen. We show that multivalent display skews antibody specificities and drives epitope-focusing of responding B cells. Antibody cloning and repertoire sequencing revealed that focusing was driven by expansion of clonally distinct B cells through recruitment of diverse precursors. We identified two antibody lineages that developed either ultrapotent neutralization or pneumovirus cross-neutralization from precursor B cells with low initial affinity for the RSV-F immunogen. This suggests that increased avidity by multivalent display facilitates the activation and recruitment of these cells. Diversification of the B cell response by the nanoparticle platform has broad implications for vaccine design.

## General info
- This repository contains the code usef for the RSV immunoglobulin repertoire sequencing data analysis. This includes figure 5,7B,7F, S5, S6F data processing and analysis.

## Repo description
- The raw sequencing reads are available in NCBI BioProject: PRJNA888955
- Here you have access only to the source code used, the code and processed dataset can be found in the zenodo repository. 
- The main scripts are under `src` folder as `rsv_clonotype_processing.Rmd` and `rsv_clonotype_analysis.Rmd`, the first one is aimed into more computationally intensive processing while the second contain the code for plotting and analysis that were used in the figures mentioned above.

## Plots and code
All the plots and code used to generate them are available in a comprehensive `Rmarkdown` file available in this repository. 

Please [click HERE](https://rodrigarc.github.io/RSV-NP-repertoire/results/lab_book/rsv_clonotype_analysis.html) to access the website containing all the analysis and results performed for this project.


## Reproducibility
- All the bioinformatics analysis performed by Rodrigo Arcoverde can be reproduced using a `mamba` or `conda` environment

```
# download the entire zenodo repository
# for windowns users, download it manually on the zenodo website
# for unix/mac users, open your terminal and run wget or curl to download the repository for the desired location, eg. your desktop
cd ~/Desktop
wget zenodo_repository.website.com 

# install mamba if not yet installed here https://github.com/conda-forge/miniforge#mambaforge
# move to the project folder within your terminal, this example assumes you have saved it on your desktop
cd ~/Desktop/RSV-NP-repertoire

# create mamba enviroment with the correct R version and needed packages
mamba create -n rsv_np_repertoire -f environment.yml

# activate mamba environment
mamba activate rsv_np_repertoire

# render the rmarkdown analysis to reproduce all the plots and generate the html file
Rscript --vanilla src/render_rmd.R

# If you do not wish to rerun everything, you can just check the code and plots. 
# Check the Plots and code session above.
```

## License

All the code in this repo is under a MIT license.
