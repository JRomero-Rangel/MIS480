#Data Preperation and Cleansing
#Data Sets were imported into RStudio

#Lubrridate to standerize Date Column
library(lubridate)
Sales.Data$Dept<-mdy(Sales.Data$Date)
Features.data.set$Date<-mdy(Features.data.set$Date)

#Merging of the Data Sets

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

#Summary Statistics, Used to gain some insight on new dataset
summary(Master.Data)
Date                Store     Weekly_Sales      Temperature       Fuel_Price   
Min.   :2010-01-10   Min.   : 1   Min.   : 209986   Min.   : -2.06   Min.   :2.513  
1st Qu.:2010-10-09   1st Qu.:12   1st Qu.: 570070   1st Qu.: 45.26   1st Qu.:2.868  
Median :2011-05-08   Median :23   Median : 981345   Median : 61.10   Median :3.417  
Mean   :2011-05-29   Mean   :23   Mean   :1059872   Mean   : 59.59   Mean   :3.330  
3rd Qu.:2012-02-03   3rd Qu.:34   3rd Qu.:1450733   3rd Qu.: 74.57   3rd Qu.:3.702  
Max.   :2012-12-10   Max.   :45   Max.   :2752122   Max.   :100.07   Max.   :4.468  
CPI         Unemployment    IsHoliday      
Min.   :126.1   Min.   : 3.879   Mode :logical  
1st Qu.:131.6   1st Qu.: 6.908   FALSE:2295     
Median :182.6   Median : 7.907   TRUE :270      
Mean   :171.4   Mean   : 8.022                  
3rd Qu.:212.5   3rd Qu.: 8.622                  
Max.   :227.2   Max.   :14.313        