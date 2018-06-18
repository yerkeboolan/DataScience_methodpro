
model_full <- lm(rating ~ ., data = attitude) 

model_null <- lm(rating ~ 1, data = attitude)



anova(step(scope = list(lower = model_null, upper = model_full), direction = 'backward'), model_full)
