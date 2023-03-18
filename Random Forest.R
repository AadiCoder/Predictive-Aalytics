library(randomForest)
library(tree)
library(ggplot2)
library(GGally)
library(dplyr)

summary(iris)

decision_tree <- tree(Species ~ ., data = iris)
decision_tree

summary(decision_tree)

plot(decision_tree)
text(decision_tree)

g <-ggpairs(iris[,1:5])

index_row <- sample(2,
                    nrow(iris),
                    replace = T,
                    prob = c(0.7, 0.3)
)    

index_row
train_data <- iris[index_row == 1,]
test_data <- iris[index_row == 2,]

iris_classifier <- randomForest(Species ~.,
                                data = train_data, #train data set
                                importance = T)
iris_classifier
plot(iris_classifier)
predicted_table <- predict(iris_classifier, test_data[,-5])
predicted_table
test_data[,5]
table(observed = test_data[,5], predicted = predicted_table)
