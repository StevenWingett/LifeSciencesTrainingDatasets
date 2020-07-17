Cuttlefish_Buoyancy <- readRDS('D:/Documents/R/Trainingdata/data/Cuttlefish_Buoyancy.rds')
#Control + Non-Fed
subset(Cuttlefish_Buoyancy, Cuttlefish_Buoyancy$treatment == 'C') -> Cuttlefish_Buoyancy.control
#isolates the cuttlefish who did not receive the CO2 treatment and were in control waters
Cuttlefish_Buoyancy.control.non <- subset(Cuttlefish_Buoyancy.control, Cuttlefish_Buoyancy.control$feeding == 0)
#further splits the data-set into those who were not fed or treated with CO2
Cuttlefish.days.non <- Cuttlefish_Buoyancy.control.non$days_until_hatching_trt
Cuttlefish.floaters.non <- Cuttlefish_Buoyancy.control.non$floating
#puts the days of the experiment and the record of floaters into their own vectors
Cuttlefish.control.non <- data.frame(Cuttlefish.days.non, Cuttlefish.floaters.non)
#creates an independent data-frame for our two newly created vectors
Cuttlefish.control.non <- Cuttlefish.control.non[order(Cuttlefish.control.non$Cuttlefish.days.non),]
#the data-frame is then sorted in order of ascending days so that time can be plotted chronologically
plot(x = Cuttlefish.control.non$Cuttlefish.days.non, y = (cumsum(Cuttlefish.control.non$Cuttlefish.floaters.non)/nrow(Cuttlefish.control.non)), type = 'l', col= 'blue', lwd=2, ylim = c(0,1), xlab = 'Days after hatching', ylab = '% Floaters')
#plots the days of the experiment against the cumulative sum of floaters, expressed as a percentage of the whole group
points(x = Cuttlefish.control.non$Cuttlefish.days.non, y = (cumsum(Cuttlefish.control.non$Cuttlefish.floaters.non)/nrow(Cuttlefish.control.non)), col = 'blue')
#points are plotted of the specific coordinates for cohesion with the rest of the graph
#Roughly the same process is done with the other 3 categories

#Control + Fed
subset(Cuttlefish_Buoyancy, Cuttlefish_Buoyancy$treatment == 'C') -> Cuttlefish_Buoyancy.control
Cuttlefish_Buoyancy.control.fed <- subset(Cuttlefish_Buoyancy.control, Cuttlefish_Buoyancy.control$feeding == 1)
Cuttlefish.days.fed <- Cuttlefish_Buoyancy.control.fed$days_until_hatching_trt
Cuttlefish.floaters.fed <- Cuttlefish_Buoyancy.control.fed$floating
Cuttlefish.control.fed <- data.frame(Cuttlefish.days.fed, Cuttlefish.floaters.fed)
Cuttlefish.control.fed <- Cuttlefish.control.fed[order(Cuttlefish.control.fed$Cuttlefish.days.fed),]
points(x = Cuttlefish.control.fed$Cuttlefish.days.fed, y = (cumsum(Cuttlefish.control.fed$Cuttlefish.floaters.fed)/nrow(Cuttlefish.control.fed)), col = 'red')
lines(x = Cuttlefish.control.fed$Cuttlefish.days.fed, y = (cumsum(Cuttlefish.control.fed$Cuttlefish.floaters.fed)/nrow(Cuttlefish.control.fed)), col = 'red')
#Here the points are plotted like before but the lines() function is used as we are adding to an existing plot

#Treatment + Non-Fed
subset(Cuttlefish_Buoyancy, Cuttlefish_Buoyancy$treatment == 'A') -> Cuttlefish_Buoyancy.treatment
Cuttlefish_Buoyancy.treatment.non <- subset(Cuttlefish_Buoyancy.treatment, Cuttlefish_Buoyancy.treatment$feeding == 0)
Cuttlefish.treatment.days.non <- Cuttlefish_Buoyancy.treatment.non$days_until_hatching_trt
Cuttlefish.treatment.floaters.non <- Cuttlefish_Buoyancy.treatment.non$floating
Cuttlefish.treatment.non <- data.frame(Cuttlefish.treatment.days.non, Cuttlefish.treatment.floaters.non)
Cuttlefish.treatment.non <- Cuttlefish.treatment.non[order(Cuttlefish.treatment.non$Cuttlefish.treatment.days.non),]
points(x = Cuttlefish.treatment.non$Cuttlefish.treatment.days.non, y = (cumsum(Cuttlefish.treatment.non$Cuttlefish.treatment.floaters.non)/nrow(Cuttlefish.treatment.non)), col = 'green')
lines(x = Cuttlefish.treatment.non$Cuttlefish.treatment.days.non, y = (cumsum(Cuttlefish.treatment.non$Cuttlefish.treatment.floaters.non)/nrow(Cuttlefish.treatment.non)), col = 'green')

#Treatment + Fed
subset(Cuttlefish_Buoyancy, Cuttlefish_Buoyancy$treatment == 'A') -> Cuttlefish_Buoyancy.treatment
Cuttlefish_Buoyancy.treatment.fed <- subset(Cuttlefish_Buoyancy.treatment, Cuttlefish_Buoyancy.treatment$feeding == 1)
Cuttlefish.treatment.days.fed <- Cuttlefish_Buoyancy.treatment.fed$days_until_hatching_trt
Cuttlefish.treatment.floaters.fed <- Cuttlefish_Buoyancy.treatment.fed$floating
Cuttlefish.treatment.fed <- data.frame(Cuttlefish.treatment.days.fed, Cuttlefish.treatment.floaters.fed)
Cuttlefish.treatment.fed <- Cuttlefish.treatment.fed[order(Cuttlefish.treatment.fed$Cuttlefish.treatment.days.fed),]
points(x = Cuttlefish.treatment.fed$Cuttlefish.treatment.days.fed, y = (cumsum(Cuttlefish.treatment.fed$Cuttlefish.treatment.floaters.fed)/nrow(Cuttlefish.treatment.fed)), col = 'orange')
lines(x = Cuttlefish.treatment.fed$Cuttlefish.treatment.days.fed, y = (cumsum(Cuttlefish.treatment.fed$Cuttlefish.treatment.floaters.fed)/nrow(Cuttlefish.treatment.fed)), col = 'orange')

grid(nx = NULL, col = "lightgray", lty = "dotted",lwd = par("lwd"), equilogs = TRUE)
#Adds a faint grid behind line for greater readability
legend(5, 0.9, legend = c('C+NF','C+F','T+NF','T+F'), col = c('blue','red','green','orange'), pch=15)
#legend is added so that lines can be identified and therefore data compared

