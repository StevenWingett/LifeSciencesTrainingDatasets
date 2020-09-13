# Life Sciences Training Datasets
![LifeSciencesTrainingDatasets](https://raw.githubusercontent.com/StevenWingett/LifeSciencesTrainingDatasets/master/www/images/lstd_logo.png)

## Overview

Welcome to the **LifeSciencesTrainingDatasets** repository.  As the name suggests, here you will find a collection of biology-related datasets to assist with learning analysis techniques.  We have also included datasets that are problematic in someway, to illustrate how to overcome commonly encountered problems when performing computational investigations.

Our repository is primarily intended to be used as an R package (named "Trainingdata"), which contains R scripts to accompany the datasets.  The R scripts, when run,  provide basic analysis and give a graphical presentation of the data.  There is also a web interface which can be accessed at [www.bioinformatics.babraham.ac.uk/trainingdata](https://www.bioinformatics.babraham.ac.uk/trainingdata).  The website files are found in the "www" folder of the Git repository.

(For those unfamiliar with R, this is a free programming language for statistical computing and graphics which may be downloaded from [www.r-project.org](https://www.r-project.org). For the purposes of this data it is recommended you use [RStudio](https://rstudio.com), an integrated development environment for R, assisting with the development of statistical programs.) 

## Git repository organisation

The package has been divided into 5 separate folders for clear organisation (along with a few other important files in the main folder, essential for the functioning of the R package).
 
 - The **data-raw** folder contains the original data sets before any modifications have been made.  If no modifications are needed, then the original data can be placed instead in the data-text folder, described below.
 - The **data-text** folder contains all the data sets in text (.txt) tab-delimited format.  The data may have been edited for simplicity, although the actual data values will remain unaltered.
 - The **data** folder is where the data imported into an R session are stored, in the rdata (.rda) file format.  These .rda files were generated from the tab-delimited files described above.
 - The **man** folder is where the R documentation (.Rd) for each of the datasets is stored.  If you type, for example, the command ```?Child_Variants``` into the R console, it will display the documentation from the corresponding .Rd file.  This will give a description of the data types and data sources.
 - The **R** folder holds the R scripts (.R) that produce the example plots for each of the datasets.

## Installing the package in R

The easiest way to install this package is to use the ```devtools``` package in R.

1. If it not installed already, use the R command ```install.packages(devtools)``` to install the devtools.

2.  Load devtools: ```library(devtools)```

3. Download and install the Trainingdata package: ```devtools::install_github('StevenWingett/LifeSciencesTrainingDatasets/Trainingdata')```

4. ```library(Trainingdata)``` will provide direct access to the datasets.

5. You can type ```Training_Data_List``` to see the dataframe of metadata for all of the data sets.

6.  Import the desired dataset into memory with the command: ```data(datasetname)```


## How to add new datasets to the repository
 
1) Create a tab-delimited text format version (edited if necessary) of your original dataset. 

2) Write the relevant R scripts (.R) to analyse the new dataset.

3) These files now need to be organised for import into the repository.  This process is made easier by the R script **prepare\_for\_git\_repo.R**, which is found in the Scripts folder.  There are option variables towards the start of the script that need to be edited prior to running.  

Script dependencies: a) the script makes use of raw strings, which requires R version >= 4; b) you will need R package "readr" installed.

 
When running the script, ensure all the files to be processed are in the Current Working Directory. The script takes the following files as input: 

- Original data file (only if changes were made to this file in preparation for the analysis)

- Formatted tab-delimited data file

- R script(s)

Generates as output:
- .Data .rda file 

- User documentation file (\*.Rd)

- Folders (corresponding to the GitHub repository organisation)

- Copies relevant files into the above folders

4) Make any necessary edits using a text editor to the .Rd file.

5) Edit the JSON file "www/datasets.json" as appropriate to reference your new dataset.  This is required by the web interface.

6) Add the files to the LifeSciencesTrainingDataset repostory.