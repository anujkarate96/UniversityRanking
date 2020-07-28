library(tidyverse)
library(ggplot2)
library(forecast)
data<-read.csv("timesData.csv" )
data_2016<-filter(data, year=="2016")
top_50<-data_2016[1:50,]
top_10<-data_2016[1:10,]

#Top universities with highest international students
e7<-top_50
e7
f7<-e7[order(e7$international_students, decreasing = TRUE),]
f7<-f7[2:50,]
rownames(f7)<- NULL
g7<-select(f7,world_rank,university_name,country,international_students)
g7

#Countries having top  10 universities.
b7<-ggplot(top_10,aes(country,fill=country)) +geom_bar()+ggtitle("Time Ranking")
b7

#reseach vs teaching
c7<-ggplot(top_50,aes(teaching,research,color=country))+geom_point()+ggtitle("Time Ranking")
c7

#recent top ranked universities in India
d7<- filter(data_2016, country=="India")
d8<-select(d7,world_rank,university_name,country)
d8


