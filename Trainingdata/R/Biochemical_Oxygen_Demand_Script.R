Biochemical_Oxygen_Demand <- readRDS('D:/Documents/R/Trainingdata/data/Biochemical_Oxygen_Demand.rds')
plot(x = Biochemical_Oxygen_Demand$Time, y = Biochemical_Oxygen_Demand$demand, type = 'l', lwd = 2, main = 'Biochemical Oxygen Demand Over Time', xlab = 'Time', ylab = 'Oxygen Usage', col = 'red')
#Two variables plotted against each other as line graph
points(x = Biochemical_Oxygen_Demand$Time, y = Biochemical_Oxygen_Demand$demand)
grid(nx = NULL, col = "lightgray", lty = "dotted",lwd = par("lwd"), equilogs = TRUE)
#Adds a faint grid behind line for greater readability
