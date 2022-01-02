#Data Preperation and Cleansing
#Data Sets were imported into RStudio

#Lubrridate to standerize Date Column
library(lubridate)
Sales.Data$Dept<-mdy(Sales.Data$Date)
Features.data.set$Date<-mdy(Features.data.set$Date)

;#Merging of the Data Sets

Master.Data<-merge(Store.Sales,Features.data.set, by ="Date","Store")
View(Master.Data)
head(Master.Data)

Date Store Weekly_Sales Temperature Fuel_Price      CPI Unemployment IsHoliday
1 2010-01-10     1    1453329.5       71.89      2.603 211.6720        7.838     FALSE
2 2010-01-10    10    1645893.0       86.01      3.001 126.2346        9.003     FALSE
3 2010-01-10    11    1182490.5       75.11      2.603 214.9847        7.564     FALSE
4 2010-01-10    12     850936.3       85.20      3.001 126.2346       14.313     FALSE
5 2010-01-10    13    1765584.5       68.74      2.853 126.2346        7.795     FALSE
6 2010-01-10    14    1855703.7       70.58      2.707 182.7168        8.724     FALSE