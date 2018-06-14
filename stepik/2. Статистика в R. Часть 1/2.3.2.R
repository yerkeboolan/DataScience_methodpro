data("npk")

my_data3 <- npk

str(my_data3)

my_data$yield <- as.factor(my_data3$yield)

fit_3 <- aov(my_data3$yield ~ my_data3$N + my_data3$P + my_data3$N:my_data3$P, data = my_data3)
summary(fit_3)

