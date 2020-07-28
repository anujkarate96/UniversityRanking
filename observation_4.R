library(tidyverse)
library(ggplot2)
library(forecast)
data<-read.csv("cwurData.csv" )
data_myuniversity<- filter(data, institution=="University of Toronto")


a5<-filter(data, year=="2015")
a5<-a5[1:50,]
a5<-a5[order(a5$quality_of_education),]
rownames(a5) <- 1:nrow(a5)
a5<-select(a5,quality_of_education,world_rank,institution,country)
a5

b5<-ggplot(a5,aes(quality_of_education,world_rank,color=country))+geom_point()+ggtitle("Quality of education ranking VS overall ranking by CSWU")
b5




