rm(list = ls())

new_install <- FALSE
need_flowVS <- FALSE

if(new_install){
  BiocManager::install(c( 
                         "CATALYST", 
                         "FlowSOM", 
                         "RColorBrewer", 
                         "Rtsne", 
                         "XML", 
                         "cluster", 
                         "data.table",
                         "destiny",
                         "diffcyt", 
                         "dplyr", 
                         "flowCore", 
                         "flowStats", 
                         "flowViz", 
                         "flowWorkspace", 
                         "ggcyto", 
                         "ggplot2", 
                         "ggpubr", 
                         "ggthemes", 
                         "readxl", 
                         "scales", 
                         "scater", 
                         "scran", 
                         "stringr", 
                         "tidyverse", 
                         "uwot" 
  ))
  remotes::install_github( 
                          "saeyslab/FlowSOM_workshop", 
                          ref = "2450059eb194e87bf9b206d3e4d0403ac9825e02")
  devtools::install_github(
    "nolanlab/cytofCore"
  )
  
  # install new QC packages
  BiocManager::install("flowAI")
  remotes::install_github("saeyslab/CytoNorm")
  BiocManager::install("PeacoQC")
  
  
  if(need_flowVS){
    install.packages(file.choose(), repos = NULL, type = "source")
  }
}

# Load packages
library(rstudioapi)
library(devtools)
library("flowCore")
library("flowWorkspace")
devtools::install_github("nolanlab/cytofCore")
library(cytofCore)
library(FlowSOM)
library(cluster)
library(Rtsne)
library(ggplot2)
library(dplyr)
library(flowViz)
library(scales)
library(ggthemes)
library(RColorBrewer)
library(uwot)
library(CATALYST)
library(diffcyt)
library(SummarizedExperiment)
library(stringr)
library(ggcyto)
library(SingleCellExperiment)
library(scran)
library(scater)
library(readxl)
library(flowStats)
library(FlowSOMworkshop)
library(tidyverse)
library(data.table)
library(ggpubr)
library(destiny)

# load QC libraries
QC_lib <- TRUE
if(QC_lib){
  library(flowAI)
  library(PeacoQC)
  library(CytoNorm)
}
