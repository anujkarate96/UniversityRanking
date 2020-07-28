library(tidyverse)
library(ggplot2)
library(forecast)
data<-read.csv("timesData.csv", stringsAsFactors = FALSE )

data_myuniversity<- filter(data, university_name=="University of Toronto")
data_myuniversity

#List recent top 50 universities all over the globe
data_2016<- filter(data,year=="2016")
data_2016<-data_2016[1:50,]
data_2016<-select(data_2016,world_rank,university_name,country)
data_2016

#timeseries
a10<- select(data_myuniversity,world_rank,university_name,country,year)
a10

Rank_time<-ts(a10$world_rank,start=c(2011))
Rank_time
plot.ts(Rank_time,main="Time Ranking of Univerisy of toronto over the time")



