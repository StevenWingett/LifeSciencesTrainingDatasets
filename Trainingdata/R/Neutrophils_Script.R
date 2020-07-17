Neutrophils <- readRDS('D:/Documents/R/Trainingdata/data/Neutrophils.rds')
boxplot(Neutrophils, main='Neutrophils')
barplot(colMeans(Neutrophils, na.rm = TRUE, dims = 1))
