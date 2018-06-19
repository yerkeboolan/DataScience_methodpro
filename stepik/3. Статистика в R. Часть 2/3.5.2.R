library(ggplot2)
resid.norm  <- function(fit){
  # put your code here
  
  df <- fit$residuals
  
  pval <- shapiro.test(df)$p.value
  
  if(pval < 0.05) {
    return(ggplot(fit, aes(x = fit$residuals)) + geom_histogram(fill = "red"))
  } else {
    return(ggplot(fit, aes(x = fit$residuals)) + geom_histogram(fill = "green"))
  }
  
  
  
}




