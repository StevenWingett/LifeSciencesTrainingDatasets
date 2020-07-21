load(file = "data/Modern_Pollen_Plant_Diversity_Relationships.rda")
#Reads data into environment for use
Woody.data <- subset(Modern_Pollen_Plant_Diversity_Relationships, Modern_Pollen_Plant_Diversity_Relationships$Growth.form == 'Woody')
#filters all woodland entries into it's own data frame
Herb.data <- subset(Modern_Pollen_Plant_Diversity_Relationships, Modern_Pollen_Plant_Diversity_Relationships$Growth.form == 'Herbaceous')
#does the same filtering but with the herbaceous data this time
par(mar = c(5,5,3,3), mfrow = c(2,1))
#sets margins and allows display of two graphs
plot(x = Herb.data$Clonality, y = Herb.data$Seed.weight..mg., main = 'Does clonality affect seed weight', xlab = 'Clonality', ylab = 'Log Seed weight (mg)', pch = 19, frame = FALSE, col = 'red', xlim = c(0, 1), ylim = c(0, log10(1500)))
plot(x = Woody.data$Clonality, y = Woody.data$Seed.weight..mg., main = 'Does clonality affect seed weight', xlab = 'Clonality', ylab = 'Log Seed weight (mg)', pch = 19, frame = FALSE, col = 'blue', xlim = c(0, 1), ylim = c(0, log(2700)))
#plots both graphs in sequence on same plot
