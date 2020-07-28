library(tidyverse)
data<-read.csv("cwurData.csv" )
data

#for latest ranking
data_2015<- filter(data, year=="2015")
data_2015<-data_2015[1:50,]
data_2015

#for canadian Universities
a4<-filter(data_canada, year=="2015")
a4<- select(a4, world_rank,national_rank,institution)
a4
c4<- select(a4,national_rank,world_rank,institution)
c4[1:10,]

#for US universities
b4<-filter(data_usa, year=="2014")
b4<- select(b4, world_rank,national_rank,institution)
b4
d4<- select(b4,national_rank,world_rank,institution)
d4[1:10,]

#for latest ranking
e4<- ggplot(data_2015,aes(country,fill=country)) +geom_bar()+ggtitle("Top 50 by Center for World University Rankings")
e4
f4<-select(data_2015,world_rank,institution,country)
f4[1:10,]

g4<-data_2015%>%group_by(country)%>%summarise(count=n())
g4



