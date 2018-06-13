data("diamonds")
head(diamonds)

library(caret)
index <- createDataPartition(mrcars$new, p = 0.8, list = FALSE)

train <-  mtcars[index,]
test <- mtcars[-index,]

library(rpart)
decision_tree <- rpart(new~, train)
predicted <- predict(decision_tree, test)
library(ROSE)
#roc.curve(test$new, predicted)


predicted <- predict(decision_tree,test, type = "class")
confusionMatrix(diamonds$new, predicted)
