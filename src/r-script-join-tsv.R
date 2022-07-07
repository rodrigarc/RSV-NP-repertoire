#!/usr/bin/env Rscript
library(dplyr)
library(data.table)

args <- commandArgs(trailingOnly=TRUE)
file_path <- args[1]
file_path_sc <- args[2]

ls <- list.files(file_path, full.names = T, recursive = T) 
tabs <- sapply(ls, USE.NAMES = TRUE, simplify = FALSE, FUN = function(x) {
  fread(x, quote = F, verbose = T) %>% mutate(genomic_sequence = "")}
  )
names(tabs) <- sub(pattern = "_filtered.tsv.gz","",unlist(lapply(strsplit(names(tabs), "/"), function(x) x[length(x)])))

tabs <- rbindlist(tabs, idcol = T)
tabs <- tabs %>% mutate(sequence_id = paste0(.id, "_" ,sequence_id))
single_cell_tab <- read.csv(file_path_sc) %>% 
  mutate(genomic_sequence = "",
	barcode = "",
         .id = "single_cell")
tabs <- rbindlist(list(single_cell_tab, tabs), use.names = T)
fwrite(tabs, file = "../data/rep-seq_sc_filtered.tsv.gz", quote = F, sep = "\t")

