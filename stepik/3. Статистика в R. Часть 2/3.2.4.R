df <- mtcars

df$am <- factor(df$am, labels = c('Automatic', 'Manual'))

fit <- lm(mpg ~ wt + am + wt * am, df)
summary(fit)