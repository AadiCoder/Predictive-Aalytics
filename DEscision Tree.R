install.packages("magrittr")
#library
library(datasets)
library(dplyr)
library(caTools)
library(magrittr)
library(party)

data("readingSkills")
head(readingSkills)

sample_data= sample.split(readingSkills,SplitRatio = 0.7)
train_data<-subset(readingSkills,sample_data==TRUE)
test_data<-subset(readingSkills,sample_data==FALSE)

model<-ctree(nativeSpeaker ~.,train_data)
plot(model)
