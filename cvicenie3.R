
view(vina)


str(vina)
summary(vina)

plot(vina$HarvestRain,vina$Price)



modelJeden = lm(vina$Price ~ vina$AGST, data = vina)

summary(modelJeden)

plot(modelJeden)

  
modelDva = lm( vina$Price ~ vina$AGST + vina$HarvestRain, data = vina)

summary(modelDva) 

modelTri = lm(vina$Price ~ vina$AGST + vina$HarvestRain + vina$WinterRain , data = vina)

summary(modelTri)

modelStyri = lm(vina$Price ~ vina$AGST + vina$HarvestRain + vina$FrancePop, data = vina)

summary(modelStyri)

modelPat = lm(vina$Price ~ vina$AGST + vina$HarvestRain + vina$Age, data = vina)

summary(modelPat)

#Korelacny koeficient - zavislost medzi premennymi
#Predmet na mail Domov
cor(vina$WinterRain,vina$Price)

cor(vina)


summary(modelSest)

testovacieVina = read.csv("wine_test.csv")

modelSest = lm(vina$Price ~ vina$AGST  + vina$HarvestRain + vina$WinterRain, data = testovacieVina)
str(testovacieVina)

prediktTest = predict(modelSest, noveData = testovacieVina)

prediktTest

testovacieVina
