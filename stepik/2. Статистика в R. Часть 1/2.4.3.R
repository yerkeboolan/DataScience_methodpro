filtered.sum <- function(x){
  # put your code here  
  y <- 0
  for(i in 1:length(x)) {
    if(!is.na(x[i]) & x[i] > 0) {
      y <- y + x[i]    
    } 
    
  }
  return(y)    
}




