model_full <- lm(rating ~ ., data = attitude) 

ideal_model <- step(model_full, direction = "backward")

anova(ideal_model, model_full)
