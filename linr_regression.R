getwd()
setwd("C:/Users/Manish/Desktop/aspy/archive(1)") #setting up working directory

ds<-read.csv('Salary_Data.csv') #Reading your data
View(ds) #Viewing your read data

install.packages('caTools')
library(caTools)

#splitting your data
split=sample.split(ds$Salary,SplitRatio = 0.8)

trainset=subset(ds,split=TRUE)
testset=subset(ds,split=FALSE)

#Linear_reg
lg=lm(formula = Salary ~ YearsExperience ,data = trainset)

coef(lg)

#prediction
y_pr=predict(lg,newdata = testset)
y_pr

y_pl=predict(lg,newdata = trainset)
#visualising
install.packages("ggplot2")
library(ggplot2)

ggplot() +geom_point(aes(x= trainset$YearsExperience,y=trainset$Salary, colour='red'))+geom_line(aes(x=trainset$YearsExperience ,y= y_pl ,colour='blue'))

                                                                                                 