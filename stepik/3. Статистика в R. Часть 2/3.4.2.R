beta.coef <- function(x){
  
stand <- data.frame(scale(x))

fit_new <- lm(stand[, 1] ~ stand[, 2])

return(fit_new$coefficients)
    
}