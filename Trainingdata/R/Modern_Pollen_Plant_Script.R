Modern_Pollen_Plant_Diversity_Relationships <- readRDS('D:/Documents/R/Trainingdata/data/Modern_Pollen_Plant_Diversity_Relationships.rds')
Woody.data <- subset(Modern_Pollen_Plant_Diversity_Relationships, Modern_Pollen_Plant_Diversity_Relationships$Growth.form == 'Woody')
Herb.data <- subset(Modern_Pollen_Plant_Diversity_Relationships, Modern_Pollen_Plant_Diversity_Relationships$Growth.form == 'Herbaceous')
min <- 0
max <- 1500
plot(x = Herb.data$Clonality, y = Herb.data$Seed.weight..mg., main = 'Does clonality affect seed weight', xlab = 'Clonality', ylab = 'Log Seed weight (mg)', pch = 19, frame = FALSE, col = 'red', xlim = c(0, 1), ylim = c(min, log10(max)))

plot(x = Woody.data$Clonality, y = Woody.data$Seed.weight..mg., main = 'Does clonality affect seed weight', xlab = 'Clonality', ylab = 'Log Seed weight (mg)', pch = 19, frame = FALSE, col = 'blue', xlim = c(0, 1), ylim = c(0, log(2700)))
