

beach_house <-read.csv("beach_house_clean.csv")
View(beach_house)

bhraw <-read.csv("beach_houseraw.csv")
View(bhraw)


str(beach_house)
beach_house$Country <-as.factor(beach_house$Country)
str(beach_house)
beach_house$City <-as.factor(beach_house$City)
str(beach_house)
beach_house$Venue <-as.factor(beach_house$Venue)
str(beach_house)
beach_house$Year <-as.factor(beach_house$Year)
str(beach_house)
beach_house$Month <-as.factor(beach_house$Month)
str(beach_house)
beach_house

beach_house$Month <-as.factor(beach_house$Month)
str(beach_house)

names(beach_house)[names(beach_house) == "X"] <- "ID"
View(beach_house)


# recode brooklyn to new york 


str(beach_house)

library(plyr)

beach_house$City <- mapvalues(beach_house$City, from = "Brooklyn", to = "New York")

summary(beach_house$City)


install.packages("shinythemes")


# recode dates as.dates

library(lubridate)

d <- as_date(beach_house$Date)

beach_house$Date <-as_date(beach_house$Date)
str(beach_house)
