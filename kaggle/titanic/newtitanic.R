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

df <- df %>% mutate_if(is.integer, as.numeric)
df <- df %>% mutate_if(is.integer, as.factor)
df <- df %>% mutate_if(is.character, as.factor)

df$Age[is.na(df$Age)] <- round(mean(df$Age, na.rm = TRUE))
df[-c(2, 3, 5, 6, 7)] <- NULL

test <- test %>% mutate_if(is.integer, as.numeric)
test <- test %>% mutate_if(is.integer, as.factor)
test <- test %>% mutate_if(is.character, as.factor)

test$Age[is.na(test$Age)] <- round(mean(test$Age, na.rm = TRUE))
test[-c(2, 4, 5, 6)] <- NULL

#glm
fit <- glm(Survived ~ (Age + Sex + Pclass + SibSp)^3, df, family = "binomial")
summary(fit)
predict_glm <- predict(fit, test, type = "response")
predict_glm <- ifelse(predict_glm > 0.5, 1, 0)
test$Survived <- predict_glm
submit <- data.frame(PassengerId = 892:1309, Survived = test$Survived)
write.csv(submit, file = "submit_glm.csv", row.names = FALSE)


#randomForest
rf <- randomForest(Survived ~ Age + Sex + Pclass + SibSp, df, type = "classification",
                   ntree = 500, do.trace = TRUE)
summary(rf)
predict_rf <- predict(rf, test, type = "class")

test$Survived <- predict_rf
submit <- data.frame(PassengerId = 892:1309, Survived =  test$Survived)
write.csv(submit, file = "submit_rf.csv", row.names = FALSE)

#decision tree
dt <- rpart(Survived ~ Age + Sex + Pclass + SibSp, df)
summary(dt)
predict_dt <- predict(dt, test, type = "class")

test$Survived <- predict_dt
submit <- data.frame(PassengerId = 892:1309, Survived = test$Survived)
write.csv(submit, file = "submit_dt.csv", row.names = FALSE)


#xgboost