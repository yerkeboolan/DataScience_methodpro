library(ggplot2)
data <- mtcars

ggplot(data, aes(mpg)) + geom_density(aes(fill = cyl, alpha = 0.5)