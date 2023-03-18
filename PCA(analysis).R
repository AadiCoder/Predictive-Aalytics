# packages required
install.packages("stats")
install.packages("dplyr")

#load libraries
library(stats)
library(dplyr)

View(iris)

mydata <- select(iris,c(1,2,3,4))

#check PCA eligibility
cor(mydata)

mean(cor(mydata)) #average mean is greater then 0

#principal component analysis
PCA <- princomp(mydata)

#evaluating PCA
#2 ways to evaluate

#PCA loadings
PCA$loadings

#principal components
PC = PCA$scores
View(PC)

cor(PC)
