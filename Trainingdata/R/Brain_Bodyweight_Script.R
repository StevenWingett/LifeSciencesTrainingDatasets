load(file = "data/Brain_Bodyweight.rda")
#Reads data, stores as variable
par(mar = c(4,4,3,3))
plot(Brain_Bodyweight$Body.Weight.kg, Brain_Bodyweight$Brain.Weight.g, main = 'Scatter of Brain vs Body-weight')
#simple scatter-plot of unmodified values, not very useful therefore, using the logged data is preferable
Brain_Bodyweight <- Brain_Bodyweight[order(Brain_Bodyweight$Log.Body.Weight.kg),]
#orders the data-frame by body-weight ascending
plot(x = Brain_Bodyweight$Log.Body.Weight.kg, y = Brain_Bodyweight$Log.Brain.Weight.g, type = 'l', col= 'red', lwd=2, xlab = 'Log body-weight', ylab = 'Log brain-weight', main = 'Brain vs Bodyweight')
#line showing correlation between logged brain and body weight
points(x = Brain_Bodyweight$Log.Body.Weight.kg, y = Brain_Bodyweight$Log.Brain.Weight.g, col = 'black', pch = 16)
#adds the points of each animals values
text(Brain_Bodyweight$Log.Body.Weight.kg, Brain_Bodyweight$Log.Brain.Weight.g, labels = Brain_Bodyweight$Species, cex = 0.6, pos = 1)
#adds the species name to each point

