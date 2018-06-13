library(rpart)
library(ggplot2)
library(ROSE)
library(caret)

data("diamonds")

index <- createDataPartition(diamonds$cut,p=0.8,list=FALSE)
train <- diamonds[index,]
test <- diamonds[-index,]

des_tree <- rpart(cut~.,train)
pred <- predict(des_tree,test,type = "class")
confusionMatrix(test$cut,pred)