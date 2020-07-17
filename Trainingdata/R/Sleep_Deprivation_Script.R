Sleep_Deprivation_CSD <- readRDS('D:/Documents/R/Trainingdata/data/Sleep_Deprivation_CSD.rds')
barplot(Sleep_Deprivation_CSD$Mean.CSD.Threshold, names.arg = Sleep_Deprivation_CSD$Group, cex.names = 1)
