[LifeSciencesTrainingDatasets](https://raw.githubusercontent.com/StevenWingett/LifeSciencesTrainingDatasets/master/www/images/lstd_logo.png)

Welcome to the LifeSciencesTrainingDataset repository, her you will find a collection of datasets and accompanying scripts for learning how to analyse data, plus the knock-on effects of improper data formatting.

Our repository currently consists of the R package "Trainingdata", containing a series of data sets, and accompanying R scripts that are examples of basic data analysis and presentation.  There is also a web interface to the data in the www folder which can be accessed [here](https://www.bioinformatics.babraham.ac.uk/LifeSciencesTrainingData/).

R is a free programming language for statistical computing and graphics. For the purposes of this data it is recommended you use RStudio, which is an integrated development environment for R that allows for the development of statistical programs.  

**Installing the Package**
The easiest way to install this package is to use the ```devtools``` package in R.
1. Use ```install.packages(devtools)``` to install the devtools package and load it into the library.
2. ```devtools::install_github('StevenWingett/LifeSciencesTrainingDatasets/Trainingdata)``` will install the package.
3. ```library(Trainingdata)``` will provide direct access to the datasets
4. You can use ```Training_Data_List``` to see the data frame of metadata for all of the data sets

You now have access to scripts and documentation for a number of data sets.

 **Organisation**
 The package has been divided into 5 separate folders for clear organisation. With a few other important files in the main folder.
 

 - The **data-raw** file contains the original data sets taken from papers before any modifications for use in this package. These files are in the comma separated value (.csv) format and these data-sets can be imported into the R environment. 
 - The **data-text** file contains all the data sets in the text (.txt) format. This was the file I used when first importing the data into the R package, I would extract the data I wanted to graph from the source materials and convert them to a text file. This text file would be placed within the data-text folder and from there imported into the environment where I would use the console to save the data as an .rda file.
 - The **data** file is where the data that is loaded up by the scripts is stored. This data is stored in the rdata (.rda) format which allows for direct loading by the scripts.
 - The **man** file is where the R documentation (.Rd) for each of the datasets are stored. If you type for example, the command ```?Child_Variants``` into the R console, it will display the documentation from the man file. This will bring up the description of the file and information regarding the data types and data sources.
 - The **R** file is where the R scripts (.R) are kept. These store the saved code that takes the data from the **data** file and produces the R plots. They have noted documentation with the code that explains the purposes for each line, allowing readers to understand each point in the code and make modifications, at the right location, if necessary.

