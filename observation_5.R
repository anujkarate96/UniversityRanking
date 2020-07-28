library(tidyverse)
library(ggplot2)
library(forecast)
data<-read.csv("cwurData.csv" )
data_myuniversity<- filter(data, university_name=="University of Toronto")
data_myuniversity

#my university
c5<- select(data_myuniversity,world_rank,institution,country,year)
c5

Rank_cswur<-ts(c5$world_rank,start=c(2012))
Rank_cswur
plot(Rank_cswur,main="cwur Ranking of Univerisy of toronto over the time")



c6<-forecast(Rank_cswur,h=5)
plot(c6, main="cwur Ranking of Univerisy of toronto over the time")

model<-lm(world_rank~year, data=c5)
pred<-predict(model, interval="prediction")
c7<-cbind(c5,pred)
c7

c8 <- ggplot(c7, aes(year, world_rank)) +
  geom_point() +
  stat_smooth(method = lm)
c8

c8 + geom_line(aes(y = lwr), color = "red", linetype = "dashed")+
  geom_line(aes(y = upr), color = "red", linetype = "dashed")

