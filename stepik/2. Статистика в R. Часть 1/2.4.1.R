NA.position <- function(x){
  # put your code here  
  y <- c()
  index <- 1
  for(i in 1:length(x)) {
    if(is.na(x[i])) {
      y[index] <- i
      index <- index+1
    }
  }
  
  y
  
}



