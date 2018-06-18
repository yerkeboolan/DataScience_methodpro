library(rpart)
library(ggplot2)


data1 <- diamonds
data2 <- subset(data1, data1$cut == "Ideal" & data1$carat == 0.46)
fit1 <- lm(price ~ depth, data2)
fit_coef <- fit1$coefficients