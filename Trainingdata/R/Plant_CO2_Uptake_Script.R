Plant_CO2_Uptake <- readRDS('D:/Documents/R/Trainingdata/data/Plant_CO2_Uptake.rds')
Quebec.data <- subset(Plant_CO2_Uptake, Plant_CO2_Uptake$Type == 'Quebec')
Mississippi.data <- subset(Plant_CO2_Uptake, Plant_CO2_Uptake$Type == 'Mississippi')
Quebec.chilled <- subset(Quebec.data, Quebec.data$Treatment == 'chilled')
Quebec.nonchilled <- subset(Quebec.data, Quebec.data$Treatment == 'nonchilled')
Mississippi.chilled <- subset(Mississippi.data, Mississippi.data$Treatment == 'chilled')
Mississippi.nonchilled <- subset(Mississippi.data, Mississippi.data$Treatment == 'nonchilled')
Quebec.chilled <- Quebec.chilled[order(Quebec.chilled$Plant),]
Quebec.nonchilled <- Quebec.nonchilled[order(Quebec.nonchilled$Plant),]
Mississippi.chilled <- Mississippi.chilled[order(Mississippi.chilled$uptake),]
Mississippi.nonchilled <- Mississippi.nonchilled[order(Mississippi.nonchilled$uptake),]

barplot(Quebec.chilled$uptake, names.arg = Quebec.chilled$Plant, main = 'Quebec chill treatment',cex.names = 0.8, las = 2)
par(mar = c(5,5,3,1))
barplot(Quebec.nonchilled$uptake, names.arg = Quebec.nonchilled$Plant, cex.names = 0.8, las = 2, main = 'Quebec non-chilled treatment')


#plot(x = Quebec.chilled$uptake, y = Quebec.chilled$conc, type = 'l', col= 'blue', lwd=2, xlim = c(0,50))
#points(x = Quebec.nonchilled$uptake, y = Quebec.nonchilled$conc, col = 'red')
#lines(x = Quebec.nonchilled$uptake, y = Quebec.nonchilled$conc, col = 'red')

plot(x = Quebec.nonchilled$conc, y = Quebec.nonchilled$uptake, col = 'red')
points(x = Quebec.chilled$conc, y = Quebec.chilled$uptake, col = 'blue')
text(Quebec.nonchilled$conc, y = Quebec.nonchilled$uptak, labels = Quebec.nonchilled$Plant, col = 'red', cex = 0.7, pos = 2)
text(x = Quebec.chilled$conc, y = Quebec.chilled$uptake, labels = Quebec.chilled$Plant, col = 'blue', cex = 0.7, pos = 2)

