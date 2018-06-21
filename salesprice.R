test<- read.csv("test.csv")
train<- read.csv("train.csv")
sub <- read.csv("sample_submission.csv")

test$Alley <- NULL
test$PoolQC <- NULL
test$FireplaceQu <- NULL
test$Fence<- NULL
test$MiscFeature <- NULL

train$Alley <- NULL
train$PoolQC <- NULL
train$FireplaceQu <- NULL
train$Fence<- NULL
train$MiscFeature <- NULL
train$PoolQC <- NULL

Mean <- function(x){
  for(i in 1:ncol(x)){
    if(is.numeric(x[[i]])){
      x[is.na(x[,i]), i] <- mean(x[,i], na.rm = TRUE)}
  }
  return(x)
}

train <- Mean(train)




moda <- function(x){
  for(i in 1:ncol(x)){
    if(is.factor(x[,i])){
      x[,i] <- as.factor(ifelse(is.na(x[,i])==TRUE, mode(x[,i]), x[,i]))
    } 
  }
  return(x)
}

train <-  moda(train)

fit <- lm(SalePrice ~., train)
summary(fit)

fun <- function(x){
  for(i in 1:ncol(x)){
    if(nlevels(x[,i])>2){
      for(unique_value in unique(x[[i]])){
        x[paste(colnames(x)[i], unique_value, sep = ".")] <- ifelse(x[[i]] == unique_value, 1, 0)
      }
    }
  }
  return (x)
}
apply(train, 2, function(x){sum(is.na(x))})

train <- fun(train)

apply(train, 2, function(x){ifelse})


fun2 <- function(x){
  for(i in 1:ncol(x)){
    if(is.factor(x[[i]])){ 
      x[[i]] <-  NULL
    }
  }
  return(x)
}