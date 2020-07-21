load(file = "data/Childrens_Indoor_Hobbies_During_Lockdown.rda")
load(file = "data/Childrens_Outdoor_Hobbies_During_Lockdown.rda")
#loads data into environment
par(mfrow = c(2,1), mar = c(0,5,0,2))
#alters margins and allows for two plots to be displayed
pie(Childrens_Indoor_Hobbies_During_Lockdown$Percent, labels = Childrens_Indoor_Hobbies_During_Lockdown$Hobby, cex = 0.6)
pie(Childrens_Outdoor_Hobbies_During_Lockdown$Percent, labels = Childrens_Outdoor_Hobbies_During_Lockdown$Outdoor.Hobby, cex = 0.7)
#pie charts created using activities % of total
