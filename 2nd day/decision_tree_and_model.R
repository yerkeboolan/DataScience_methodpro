data("mtcars")
head(mtcars)

mtcars[,1:3]
mtcars[,c(1,4)]
mtcars[1,c(1,4)]

mtcars$new <- ifelse(mtcars$mpg>mean(mtcars$mpg),
                     1,0)
mtcars$mpg <- NULL

# formula to split data 80/20
# install.packages("caret")
library(caret)
index <- createDataPartition(mtcars$new,p=0.8,
                             list=FALSE)
train <- mtcars[index,]
test <- mtcars[-index,]

library(rpart)
# . �������� ��� ���������� ��� ��
# rpart(��- ...)
# rpart(��-a+s+c+d+w, data=)
decision_tree <- rpart(new~.,train)
# predict(model, test)
predicted <- predict(decision_tree,test)
library(ROSE)
#  Roc Curve - ������� ���������� ���-�� ������
roc.curve(test$new,predicted)

