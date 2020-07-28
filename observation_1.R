library(tidyverse)
data<-read.csv("cwurData.csv" )
data

#for canadian Universities
data_canada<- filter(data, country=="Canada")

#for US universities
data_usa<- filter(data, country=="USA")

#for canadian Universities
a1<-filter(data_canada, year=="2012")
a1<- select(a1, world_rank,national_rank,institution)
a1
#for US universitie
b1<-filter(data_usa, year=="2012")
b1<- select(b1, world_rank,national_rank,institution)
b1

#for canadian Universities
a2<-filter(data_canada, year=="2013")
a2<- select(a2, world_rank,national_rank,institution)
a2
#for US universities
b2<-filter(data_usa, year=="2013")
b2<- select(b2, world_rank,national_rank,institution)
b2
