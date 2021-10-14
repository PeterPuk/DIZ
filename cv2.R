
R version 3.5.0 (2018-04-23) -- "Joy in Playing"
Copyright (C) 2018 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> krajina = c("Slovensko","Cesko")
> krajina[2]
[1] "Cesko"
> krajina = c("Slovensko","Cesko","India")
> krajina = c("Slovensko","Cesko")
> krajina = c("Slovensko","Cesko","India")
> CountryData = data.frame(country,dlzkaDozitia)
Error in data.frame(country, dlzkaDozitia) : object 'country' not found
> dlzkaDozitia c(80,72,82)
Error: unexpected symbol in "dlzkaDozitia c"
> dlzkaDozitia = c(80,72,82)
> CountryData = data.frame(krajina,dlzkaDozitia)
> CountryData
krajina dlzkaDozitia
1 Slovensko           80
2     Cesko           72
3     India           82
> CountryData$Population = c(5000000,10000000,1300000000)
> CountryData
krajina dlzkaDozitia Population
1 Slovensko           80    5.0e+06
2     Cesko           72    1.0e+07
3     India           82    1.3e+09
> Country = c("Australia","Greece")
> DlzkaDozitia = c(82,81)
> Population = c(23050,11125)
>     
  > NewCountryData = data.frame(Country,DlzkaDozitia,Population)
> NewCountryData
Country DlzkaDozitia Population
1 Australia           82      23050
2    Greece           81      11125
> AllCountryData = rbind(CountryData,NewCountryData)
Error in match.names(clabs, names(xi)) : 
  names do not match previous names
> krajina = c("Australia","Greece")
> dlzkaDozitia = c(82,81)
> NewCountryData = data.frame(krajina,dlzkaDozitia,Population)
> AllCountryData = rbind(CountryData,NewCountryData)
> AllCountryData
krajina dlzkaDozitia Population
1 Slovensko           80    5000000
2     Cesko           72   10000000
3     India           82 1300000000
4 Australia           82      23050
5    Greece           81      11125
> WHO = read.csv("WHO.csv")
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
  In file(file, "rt") : cannot open file 'WHO.csv': No such file or directory
> WHO = read.csv("C:\Users\Student\Downloads\WHO.csv")
Error: '\U' used without hex digits in character string starting ""C:\U"
> WHO = read.csv(C:\Users\Student\Downloads\WHO.csv)
Error: unexpected input in "WHO = read.csv(C:\"
                                           > WHO = read.csv("C:\Users\Student\Downloads\WHO (1).csv")
                                           Error: '\U' used without hex digits in character string starting ""C:\U"
                                           > WHO = read.csv("Users\Student\Downloads\WHO (1).csv")
                                           Error: '\S' is an unrecognized escape in character string starting ""Users\S"
                                           > WHO = read.csv("Stiahnuté súbory\WHO.csv")
                                           Error: '\W' is an unrecognized escape in character string starting ""Stiahnuté súbory\W"
                                           > setwd("C:/Users/Student/Downloads")
                                           > WHO = read.csv("WHO.csv")
                                           > str(WHO)
                                           'data.frame':	194 obs. of  13 variables:
                                             $ Country                      : Factor w/ 194 levels "Afghanistan",..: 1 2 3 4 5 6 7 8 9 10 ...
                                           $ Region                       : Factor w/ 6 levels "Africa","Americas",..: 3 4 1 4 1 2 2 4 6 4 ...
                                           $ Population                   : int  29825 3162 38482 78 20821 89 41087 2969 23050 8464 ...
                                           $ Under15                      : num  47.4 21.3 27.4 15.2 47.6 ...
                                           $ Over60                       : num  3.82 14.93 7.17 22.86 3.84 ...
                                           $ FertilityRate                : num  5.4 1.75 2.83 NA 6.1 2.12 2.2 1.74 1.89 1.44 ...
                                           $ LifeExpectancy               : int  60 74 73 82 51 75 76 71 82 81 ...
                                           $ ChildMortality               : num  98.5 16.7 20 3.2 163.5 ...
                                           $ CellularSubscribers          : num  54.3 96.4 99 75.5 48.4 ...
                                           $ LiteracyRate                 : num  NA NA NA NA 70.1 99 97.8 99.6 NA NA ...
                                           $ GNI                          : num  1140 8820 8310 NA 5230 ...
                                           $ PrimarySchoolEnrollmentMale  : num  NA NA 98.2 78.4 93.1 91.1 NA NA 96.9 NA ...
                                           $ PrimarySchoolEnrollmentFemale: num  NA NA 96.4 79.4 78.2 84.5 NA NA 97.5 NA ...
                                           > summary(WHO)
                                           Country                      Region     Population         Under15          Over60      FertilityRate  
                                           Afghanistan        :  1   Africa               :46   Min.   :      1   Min.   :13.12   Min.   : 0.81   Min.   :1.260  
                                           Albania            :  1   Americas             :35   1st Qu.:   1696   1st Qu.:18.72   1st Qu.: 5.20   1st Qu.:1.835  
                                           Algeria            :  1   Eastern Mediterranean:22   Median :   7790   Median :28.65   Median : 8.53   Median :2.400  
                                           Andorra            :  1   Europe               :53   Mean   :  36360   Mean   :28.73   Mean   :11.16   Mean   :2.941  
                                           Angola             :  1   South-East Asia      :11   3rd Qu.:  24535   3rd Qu.:37.75   3rd Qu.:16.69   3rd Qu.:3.905  
                                           Antigua and Barbuda:  1   Western Pacific      :27   Max.   :1390000   Max.   :49.99   Max.   :31.92   Max.   :7.580  
                                           (Other)            :188                                                                                NA's   :11     
                                           LifeExpectancy  ChildMortality    CellularSubscribers  LiteracyRate        GNI        PrimarySchoolEnrollmentMale
                                           Min.   :47.00   Min.   :  2.200   Min.   :  2.57      Min.   :31.10   Min.   :  340   Min.   : 37.20             
                                           1st Qu.:64.00   1st Qu.:  8.425   1st Qu.: 63.57      1st Qu.:71.60   1st Qu.: 2335   1st Qu.: 87.70             
                                           Median :72.50   Median : 18.600   Median : 97.75      Median :91.80   Median : 7870   Median : 94.70             
                                           Mean   :70.01   Mean   : 36.149   Mean   : 93.64      Mean   :83.71   Mean   :13321   Mean   : 90.85             
                                           3rd Qu.:76.00   3rd Qu.: 55.975   3rd Qu.:120.81      3rd Qu.:97.85   3rd Qu.:17558   3rd Qu.: 98.10             
                                           Max.   :83.00   Max.   :181.600   Max.   :196.41      Max.   :99.80   Max.   :86440   Max.   :100.00             
                                           NA's   :10          NA's   :91      NA's   :32      NA's   :93                 
                                           PrimarySchoolEnrollmentFemale
                                           Min.   : 32.50               
                                           1st Qu.: 87.30               
                                           Median : 95.10               
                                           Mean   : 89.63               
                                           3rd Qu.: 97.90               
                                           Max.   :100.00               
                                           NA's   :93                   
                                           > View(WHO)
                                           > which.min(WHO$Under15)
                                           [1] 86
                                           > WHO$Country[86]
                                           [1] Japan
                                           194 Levels: Afghanistan Albania Algeria Andorra Angola Antigua and Barbuda Argentina Armenia Australia ... Zimbabwe
                                           > which.max(WHO$Under15)
                                           [1] 124
                                           > WHO$Country[124]
                                           [1] Niger
                                           194 Levels: Afghanistan Albania Algeria Andorra Angola Antigua and Barbuda Argentina Armenia Australia ... Zimbabwe
                                           > which.min(WHO$GNI)
                                           [1] 48
                                           > WHO$Country[48]
                                           [1] Democratic Republic of the Congo
                                           194 Levels: Afghanistan Albania Algeria Andorra Angola Antigua and Barbuda Argentina Armenia Australia ... Zimbabwe
                                           > which.max(WHO$GNI)
                                           [1] 138
                                           > WHO$Country[138]
                                           [1] Qatar
                                           194 Levels: Afghanistan Albania Algeria Andorra Angola Antigua and Barbuda Argentina Armenia Australia ... Zimbabwe
                                           > plot(FertilityRate,GNI)
                                           Error in plot(FertilityRate, GNI) : object 'FertilityRate' not found
                                           > plot(WHO$FertilityRate,WHO$GNI)
                                           > plot(WHO$FertilityRate,type = "o",WHO$GNI,type = "o")
                                           Error in plot.default(WHO$FertilityRate, type = "o", WHO$GNI, type = "o") : 
                                             formal argument "type" matched by multiple actual arguments
                                           > plot(WHO$FertilityRate,WHO$GNI)
                                           > plot(WHO$PrimarySchoolEnrollmentFemale,WHO$GNI)
                                           > plot(WHO$ChildMortality,WHO$GNI)
                                           > plot(WHO$ChildMortality,WHO$FertilityRate)
                                           > plot(WHO$ChildMortality type = "o",WHO$FertilityRate type="o")
                                           Error: unexpected symbol in "plot(WHO$ChildMortality type"
                                           > plot(WHO$ChildMortality,WHO$LiteracyRate)
                                           > boxplot(WHO$FertilityRate)
                                           > boxplotplot(WHO$ChildMortality,WHO$LiteracyRate)
                                           Error in boxplotplot(WHO$ChildMortality, WHO$LiteracyRate) : 
                                             could not find function "boxplotplot"
                                           > boxplot(WHO$ChildMortality,WHO$LiteracyRate)
                                           > table}WHO)
Error: unexpected '}' in "table}"
> table(WHO$Region)

Africa              Americas Eastern Mediterranean                Europe       South-East Asia 
46                    35                    22                    53                    11 
Western Pacific 
27 
> tapply(WHO$Over60,WHO$Region,mean)
Africa              Americas Eastern Mediterranean                Europe       South-East Asia 
5.220652             10.943714              5.620000             19.774906              8.769091 
Western Pacific 
10.162963 
> USDA = read.csv("USDA.csv")
> View(USDA)
> tapply(USDA$Sodium,mean)
Error in unique.default(x, nmax = nmax) : 
  unique() applies only to vectors
> priemer = mean(USDA$Sodium)
> priemer
[1] NA