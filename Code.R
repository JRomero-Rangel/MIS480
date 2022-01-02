#Data Preperation and Cleansing
#Data Sets were imported into RStudio

#Lubrridate to standerize Date Column
library(lubridate)
Sales.Data$Dept<-mdy(Sales.Data$Date)
Features.data.set$Date<-mdy(Features.data.set$Date)

;#Merging of the Data Sets

Master.DataFile<-merge(Store.Sales,Features.data.set, by ="Date","Store")
View(Master.DataFile)
