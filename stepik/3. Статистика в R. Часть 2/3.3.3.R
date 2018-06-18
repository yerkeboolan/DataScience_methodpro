data("LifeCycleSavings")

model <- lm(sr ~ (pop15 + pop75 + dpi + ddpi)^2, LifeCycleSavings)
summary(model) 

