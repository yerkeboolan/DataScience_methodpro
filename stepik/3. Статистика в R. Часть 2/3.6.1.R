new_model <- glm(am ~ disp + vs + mpg, mtcars, family = "binomial")
log_coef <- new_model$coefficients




