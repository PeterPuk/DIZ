8 * 6
2^16
sqrt(2)
abs(-65)
?sqrt
odmocnina <- sqrt(2)
pocetHodin <- 365*24
ls()
?ls
rm(odmocnina)
c(2,4,7,9,12)


krajina <- c("Brazilia","Cina","India","Svajciarsko","USA")
dlzkaDozitia <- c(74,76,65,83,79)
krajina[1]
dlzkaDozitia[3]
dataKrajina = data.frame(krajina,dlzkaDozitia)
dataKrajina$populacia <- c(199000, 1390000, 1240000, 7997, 318000)
dataKrajina
krajina <- c("Australia","Grecko")
dlzkaDozitia <- c(82,81)
populacia <- c(23050, 11125)
noveDataKrajiny <- data.frame(krajina,dlzkaDozitia,populacia)
noveDataKrajiny
vsetkyDataKrajiny <- rbind(dataKrajina,noveDataKrajiny)
vsetkyDataKrajiny

WHO <- read.csv("WHO.csv")
str(WHO)
summary(WHO)

WHO_Europa <- subset(WHO,Region == "Europa")
str(WHO_Europa)
write.csv(WHO_Europa,"Europa.csv")

WHO["Under15"]
WHO$Under15

mean(WHO$Under15)
sd(WHO$Under15)
summary(WHO$Under15)
which.min(WHO$Under15)
WHO$Country[86]

WHO$Country[which.max(WHO$Under15)]

plot (WHO$GNI, WHO$FertilityRate)
Outliers <- subset(WHO, GNI > 10000 & FertilityRate > 2.5)
Outliers[c("Country","GNI","FertilityRate")]
hist(WHO$CellularSubscribers)
boxplot(WHO$LifeExpectancy ~ WHO$Region)
#pozri ci je tucna ciara median alebo priemer

table(WHO$Region)
tapply(WHO$Over60, WHO$Region, mean)
tapply(WHO$LiteracyRate, WHO$Region, min,na.rm = TRUE)



USDA <- read.csv("USDA.csv")


nrow(USDA)
str(USDA)
USDA$Cholesterol[which.max(USDA$Cholesterol)]
USDA$Description[which.max(USDA$Sodium)]

vysokySodik <- subset(USDA,Sodium > 10000)
str(vysokySodik)
vysokySodik$Description

plot(USDA$Protein, USDA$TotalFat,xlab = "Protein",ylab = "Tuk",main = "Bielkoviny vs Tuky", col="red")
