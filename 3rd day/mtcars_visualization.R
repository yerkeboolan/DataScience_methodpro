library(ggplot2)
data <- mtcars

data$cyl <- as.factor(data$cyl)
data
str(data)

qplot(data$mpg, data$disp, col = data$cyl)



ggplot(data, aes(data$mpg)) + geom_density(aes(fill = data$cyl, alpha = 0.5)