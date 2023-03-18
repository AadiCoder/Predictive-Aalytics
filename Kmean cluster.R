#install pakages

install.packages("ggfortify")

library(stats)
library(dplyr)
library(ggplot2)
library(ggfortify)

View(iris)

mydata = select(iris,c(1,2,3,4))

wssplot(mydata)

#kmeans
km<-kmeans(mydata,2)

#Evaluating
autoplot(km,mydata,frame=TRUE)
km$centers