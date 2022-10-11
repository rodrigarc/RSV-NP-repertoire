#!/usr/bin/env Rscript
library(dplyr)
library(data.table)

args <- commandArgs(trailingOnly=TRUE)
folder_to_avg_SHM <- args[1]
grepl_pattern <- args[2]

ls <- list.files(folder_to_avg_SHM,full.names = TRUE, recursive = TRUE)

if(is.na(grepl_pattern)){
  print("No `grepl` pattern, selecting all files in the folder recursively.")
}else{
  print(paste0("Selecting only files containing:", grepl_pattern))
  grepl_pattern <- as.character(grepl_pattern)
  ls <- ls[grepl(grepl_pattern,ls)]
}

ls <- list.files("OneDrive - Karolinska Institutet/projects/rsv_ki/clonoquery_clonotype_analysis/results/2022-07-08",full.names = TRUE, recursive = TRUE)
ls <- ls[grepl("clonotype_summary",ls) & grepl("rsv",ls)]
lapply(ls,function(x) {
  database <- strsplit(x, "/")[[1]][[7]]
  metadata <- strsplit(x, "/")[[1]][[9]]
  return(paste(database,metadata, sep = "_"))
  })
list_csv <- lapply(ls, read.csv)

ls
