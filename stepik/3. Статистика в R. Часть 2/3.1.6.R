regr.calc <- function(x){
test_1 <- cor.test(x[, 1], x[, 2])
  if (test_1$p.value < 0.05) { 
    fit <- lm(x[, 1] ~ x[, 2])
    x$fit <- fit$fitted.values
    return(x)
  } else { 
    return("There is no sense in prediction")}
    
}




