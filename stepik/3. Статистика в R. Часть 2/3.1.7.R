library(ggplot2)
mydataf <- iris

fit3 <- lm(Petal.Width ~ Sepal.Width, mydataf)
summary(fit3)

ggplot(mydataf, aes(Sepal.Width, Petal.Width, col = Species)) + 
    geom_point(size = 3) + 
    geom_smooth(method = "lm")