library(tidyverse)
library(ggplot2)
data<-read.csv("cwurData.csv" )

data_2015<-filter(data, year==2015)

d1<- ggplot(data,aes(score,..density..))+geom_histogram(color="white", fill="black")+geom_density()+ggtitle("cwur score's density")
d1
d2<- ggplot(data_2015,aes(score,..density..))+geom_histogram(color="white", fill="black")+geom_density()+ggtitle("cwur score's density of 2015")
d2


a<-ggplot(data,aes(world_rank,score,color=year))+geom_point()
a

b<-a+facet_grid(year~.)+geom_smooth()
b
c<-a+facet_grid(.~year)+geom_smooth()
c

d<-a+facet_wrap(.~year)+geom_smooth()
d