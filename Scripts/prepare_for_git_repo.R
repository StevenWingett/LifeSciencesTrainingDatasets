# R script to prepare files for the GitHub repository: 
# https://github.com/StevenWingett/LifeSciencesTrainingDatasets
#
# Takes as input:
# 1) Origial data file
# 2) Formatted data file
# 3) *.R scripts
#
# Generates as output:
# 1) .Rda file (note: data imported as read.delim(edited_datafile) when creating datafile - 
#                      maybe edit this as required to correspond to your ner *.R script)
# 2) User documentation file (*.Rd) - will need editing to complete documentation
# 3) Folders (corresponding to the GitHub repository organistaion)
# 4) Copies files to folders - (*.R files will need editing to link to *.Rda file -
#                                instructions given in *.Rda file)
#
# Make sure the data to be processed is all in the same folder, which is the current working directory
#
# The script makes use of raw strings, which requires R version 4+
# install.packages("readr") # you only need to do this one time on your system
library(readr)

rm(list=ls())

##########################################
# ATTENTION - Users modify the links below

# Edit the links below as appropriate:

# Path and name to original data file:
original_datafile <- 'DinoData.csv'    #Edit as required

#Path and name to edited data file:
edited_datafile <- 'DinoData.txt'    #Edit as required
#
#
project_title <- 'Dataset of how dinosaur mass varies with femur length'    #Give data a brief description
#
#
#  Note: Special characters here can cause problems
project_source <- 'O’Gorman EJ, Hone DWE (2012) Body Size Distribution of the Dinosaurs. PLoS ONE 7(12): e51925.'

# In the code below, swap "DinoData" to the name of imported object in your R script
# For example, if in you R script a dataframe is named "dino.data", then change edited_data
# to dino.data
save_rda <- function(DinoData, rda_filename){    #Edit
  save(DinoData, file=rda_filename)              #Edit
}

###########################################


# Make output folders
main_outfolder <- "for_repo"
r_script_outfolder <- paste(main_outfolder, "R", sep=.Platform$file.sep)
original_data_outfolder <- paste(main_outfolder, "data-raw", sep=.Platform$file.sep)
edited_data_outfolder <- paste(main_outfolder, "data-text", sep=.Platform$file.sep)
rda_outfolder <- paste(main_outfolder, "data", sep=.Platform$file.sep)
script_description_outfolder <- paste(main_outfolder, "man", sep=.Platform$file.sep)

dir.create(main_outfolder)
dir.create(r_script_outfolder)
dir.create(original_data_outfolder)
dir.create(edited_data_outfolder)
dir.create(rda_outfolder)
dir.create(script_description_outfolder)

project_name <- substr(edited_datafile, start=1, stop=nchar(edited_datafile) - 4)


# Copy data files to output folder
file.copy(from=original_datafile, to=paste(original_data_outfolder, original_datafile, sep=.Platform$file.sep))
file.copy(from=edited_datafile, to=paste(edited_data_outfolder, edited_datafile, sep=.Platform$file.sep))


# Copy Rscripts to destination folder
r_files <- list.files(pattern = "\\.R$")
r_files <- r_files[r_files != "prepare_for_git_repo.R"]    #Remove files ending 'R' we do not wish to add to repo
for(i in 1:length(r_files)){
  destination_file <- paste(r_script_outfolder, r_files[i], sep=.Platform$file.sep)
  file.copy(from=r_files[i], to=destination_file)
}


# Make *.Rda file
edited_data <- read.delim(edited_datafile)  #Edit this to correspond to your R script, if necessary  
rda_filename <- project_name
rda_filename <- paste0(rda_filename, ".rda")
rda_filename <- paste(rda_outfolder, rda_filename, sep=.Platform$file.sep)
save_rda(edited_data, rda_filename)


# Create R documentation file
# (The raw string below requires R version 4+)
documentation <- r"(\name{____PROJECTNAME____}
\alias{____PROJECTNAME____}
\docType{data}
\title{
  ____PROJECT_TITLE____
}
\description{
  %%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data("____PROJECTNAME____")}
\format{
  A data set with the following columns.
  \describe{____DATA_COLUMNS____
  }
}
\details{
  %%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
  ____PROJECT_SOURCE____
}
\references{
  %%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(____PROJECTNAME____)
  
____PROJECT_EXAMPLE____
}
\keyword{datasets}
)"


#Edit documentation
documentation <- gsub(pattern="____PROJECTNAME____", replacement=project_name, x=documentation)
documentation <- gsub(pattern="____PROJECT_TITLE____", replacement=project_title, x=documentation)
documentation <- gsub(pattern="____PROJECT_SOURCE____", replacement=project_source, x=documentation)

column_headers <- read.delim(edited_datafile, stringsAsFactors = FALSE)   #Do not edit this line
column_headers <- sapply(column_headers, typeof)   # Get column headers
column_header_lines <- ''
for(i in 1:length(column_headers)){
  header_name <- names(column_headers)[i]
  category <- column_headers[i]
  line <- paste0("\t\t", r"(\\item{\\code{)", header_name,   r"(}}{a )", category, ' vector}')
  column_header_lines <- paste(column_header_lines, line, sep="\n")
}

documentation <- gsub(pattern="____DATA_COLUMNS____", replacement=column_header_lines, x=documentation)

project_example <- ""
for(i in 1:length(r_files)){
  r_file_text <- read_file(r_files[i])
  project_example <- paste(project_example, r_file_text, sep="\n")  
}

documentation <- gsub(pattern="____PROJECT_EXAMPLE____", replacement=project_example, x=documentation)

script_description_file <- project_name
script_description_file  <- paste0(script_description_file, ".Rd")
script_description_file <- paste(script_description_outfolder, script_description_file, sep=.Platform$file.sep)


# Write out documentation file
fileConn <- file(script_description_file)
writeLines(documentation, fileConn)
close(fileConn)


print("ATTENTION - NOTES TO USER!")
print("__________________________")
print("Edit the *.R files in the new R dircectory so they now import data from the data/*.Rda file")
print("Edit the *Rd file as required")
print("Local packages can be made by adding the NAMESPACE and DESCRIPTION files to the folder")
print("The folder should then be compressed with tar cvzf dirname.tar.gz dirname")
