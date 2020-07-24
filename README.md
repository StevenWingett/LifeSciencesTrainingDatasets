# LifeSciencesTrainingDatasets

Welcome to the LifeSciencesTrainingDataset repository, her you will find a collection of datasets and accompanying scripts for learning how to analyse data, plus the knock-on effects of improper data formatting.

GitHub is a code hosting platform that allows for version control, the recording of changes made to files and the ability to revert back to older states, and collaboration between multiple users. With a repository being the way to easily organize a single project. 

Our repository currently consists of the R package "Trainingdata", containing a series of data sets, and accompanying R scripts that are examples of basic data analysis and presentation.

R is a free programming language for statistical computing and graphics. For the purposes of this data it is recommended you use RStudio, which is an integrated development environment for R that allows for the development of statistical programs.  

**Installing the Package**
To first begin to use our package you must install it into RStudio. 
1. You can download a zip file containing the package by clicking the green "code" button on the repositories page. This file will be in tar.gz format, which is standard for git. 
2. You will then need to extract the contents of this file, macOS and Linux uses can simply use the terminal: "tar -xzf LifeSciencesTrainingDatasets-master". While Windows users will require additional software such as 7.zip or WinRar to extract a file in this format. Once that's done you should then see the "Trainingdata" folder within the "LifeSciencesTrainingDatasets-master" folder. 
3. Compress this file back into tar.gz format, this can be done in macOS and Linux terminals with: "tar -czf Trainingdata" and with 7.zip or WinRar on windows. 
4. Then if you navigate to the packages tab of the Plots and Files window in RStudio and click Install. You can select your newly compressed "Trainingdata.tar.gz" and R will install this package for you. 

You can also install the package from within R using another R package "devtools".
1. Use install.packages(devtools) to install the devtools package and load it into the library.
2. devtools::install_github('StevenWingett/LifeSciencesTrainingDatasets) will install the package.

You now have access to scripts and documentation for a number of data sets.

 **Organisation**
 The package has been divided into 5 separate folders for clear organisation. With a few other important files in the main folder.
 

 - The **data-raw** file contains the original data sets taken from papers before any modifications for use in this package. These files are in the comma separated value (.csv) format and these data-sets can be imported into the R environment. 
 - The **data-text** file contains all the data sets in the text (.txt) format. This was the file I used when first importing the data into the R package, I would extract the data I wanted to graph from the source materials and convert them to a text file. This text file would be placed within the data-text folder and from there imported into the environment where I would use the console to save the data as an .rda file.
 - The **data** file is where the data that is loaded up by the scripts is stored. This data is stored in the rdata (.rda) format which allows for direct loading by the scripts.
 - The **man** file is where the R documentation (.Rd) for each of the datasets are stored. If you type for example, the command "?Child_Variants" into the R console, it will display the documentation from the man file. This will bring up the description of the file and information regarding the data types and data sources.
 - The **R** file is where the R scripts (.R) are kept. These store the saved code that takes the data from the **data** file and produces the R plots. They have noted documentation with the code that explains the purposes for each line, allowing readers to understand each point in the code and make modifications, at the right location, if necessary.

