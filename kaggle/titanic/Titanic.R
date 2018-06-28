library(base)
library(data.table)
library(dplyr)
library(ggplot2)
library(Matrix)
library(xgboost)
library(rpart)
library(randomForest)
library(ROSE)
library(car)
library(caret)
library(lubridate)
library(e1071)

df <- read.csv("train.csv")
test <- read.csv("test.csv")
#View(df)
#View(test)

#Drop unnecessary variables

df <- df %>% mutate_if(is.integer, as.numeric)
df <- df %>% mutate_if(is.integer, as.factor)
df <- df %>% mutate_if(is.character, as.factor)


test <- test %>% mutate_if(is.integer, as.numeric)
test <- test %>% mutate_if(is.integer, as.factor)
test <- test %>% mutate_if(is.character, as.factor)

test$Age[is.na(test$Age)] <- round(mean(test$Age, na.rm = TRUE))

test[-c(2, 4, 5, 6, 11)] <- NULL


df$Embarked <- replace(df$Embarked, which(is.na(df$Embarked)), 'S')

df$Age[is.na(df$Age)] <- round(mean(df$Age, na.rm = TRUE))
df[-c(2, 3, 5, 6, 7, 12)] <- NULL



#glm
fit <- glm(Survived ~ (Age + Sex + Pclass + SibSp + Embarked)^3, df, family = "binomial")
summary(fit)
predict_glm <- predict(fit, test, type = "response")
predict_glm <- ifelse(predict_glm > 0.5, 1, 0)
df$Survived <- factor(df$Survived)
predict_glm <- factor(predict_glm)
#confusionMatrix(predict_glm, df$Survived)
str(df)
submit <- data.frame(PassengerId = 892:1309, Survived = predict_glm)
write.csv(submit, file = "submit_glm.csv", row.names = FALSE)

#randomforest



#decision tree


#xgboost


