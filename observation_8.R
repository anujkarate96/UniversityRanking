library(tidyverse)
library(ggplot2)
library(dplyr)
datatime<-read.csv("timesData.csv" , stringsAsFactors = FALSE)
datashanghai<-read.csv("shanghaiData.csv")

datatime_2015<-filter(datatime, year=="2015")
datashanghai_2015<-filter(datashanghai, year=="2015")

shan_time_data<-dplyr::inner_join(datatime_2015,datashanghai_2015,by="university_name")
shan_time_data
shan_time_data<- select(shan_time_data,world_rank.x,world_rank.y,university_name,country)
shan_time_data
names(shan_time_data)[1:2]<-c("Time_world_ranking", "Shanghai_world_ranking")
head(shan_time_data)

top_20<-shan_time_data[1:20,]
top_20
a8<-ggplot(top_20,aes(Time_world_ranking,Shanghai_world_ranking,color=university_name))+geom_point()+ggtitle("Top20 by TimeRanking VS ShanghaiRanking")
a8

top_10<-shan_time_data[1:10,]
top_10
b8<-ggplot(top_10,aes(Time_world_ranking,Shanghai_world_ranking,color=university_name))+geom_point()+ggtitle("Top10 by TimeRanking VS ShanghaiRanking")
b8

#Time
top_50_t<-datatime[1:50,]
c8<-ggplot(top_50_t,aes(country,fill=country))+geom_bar()+ggtitle("Time ranking")
c8

d8<-top_50_t%>%group_by(country)%>%summarise(count=n())
d8<- d8[order(-count),]
d8

