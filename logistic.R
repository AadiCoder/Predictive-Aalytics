library(dplyr)
summary(mtcars)
View(mtcars)
library(caTools)
library(ROCR)
sp <- sample.split(mtcars,SplitRatio = 0.8)
sp
train_reg <- subset(mtcars,sp =="True")
test_reg <- subset(mtcars,sp =="False")
Logistic_model <- glm(vs ~ wt + disp,data = train_reg)
Logistic_model
pr_reg<-ifelse(pr_reg>0.5)
