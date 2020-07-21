load(file = "data/Biomass_of_Herbivorous_Fish.rda")
#reads data into environment from data folder
par(mfrow = c(2,1), mar = c(8,3,2,3))
#Alters plot dimensions so the long species names fit well and allows two plots to be displayed and compared
Biomass.Deep <- Biomass_of_Herbivorous_Fish[order(-Biomass_of_Herbivorous_Fish$Deep.Mean.Biomass),]
#Sorts data by deep mean descending
barplot(Biomass.Deep$Deep.Mean.Biomass, names.arg = Biomass.Deep$Species, las = 2, cex.names = 0.8, ylim = c(0, 40), main = 'Deep')
#Plots the average Biomass of reef species found within the deep environment
Biomass.Shallow <- Biomass_of_Herbivorous_Fish[order(-Biomass_of_Herbivorous_Fish$Shallow.Mean.Biomass),]
#Sorts data by shallow mean descending
barplot(Biomass.Shallow$Shallow.Mean.Biomass, names.arg = Biomass.Shallow$Species, las = 2, cex.names = 0.8, ylim = c(0, 40), main = 'Shallow')
#Plots average biomass seen in shallows
