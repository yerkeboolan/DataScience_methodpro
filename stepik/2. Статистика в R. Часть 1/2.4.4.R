outliers.rm <- function(x){
  # put your code here  
  q <- quantile(x, probs = c(0.25, 0.75))
  iqr <- IQR(x)
  tmp <- c()
  n <- length(x)
  k <- 1
  
  for(i in 1:n) {
    if(x[i] >= q[1] - 1.5 * iqr & x[i] <= q[2] + 1.5*iqr) {
      tmp[k] <- x[i]
      k <- k + 1
    }
  }
  
  return(tmp)
  
  
  
  
}




