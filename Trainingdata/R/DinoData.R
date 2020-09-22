#Import data
load(file = "data/DinoData.rda")

DinoData$Clade <- factor(DinoData$Clade)   #Convert to factors

#Plot graph
plot(x=DinoData$FL, 
     y=DinoData$Mass, 
     pch=19, 
     col=DinoData$Clade,
     main="Dinosaur femur length vs body mass",
     xlab="Femur length (mm)",
     ylab="Mass (kg)"
)

#Add key
legend("topleft", 
       legend=unique(DinoData$Clade), 
       pch=19,
       col=unique(DinoData$Clade)
)
