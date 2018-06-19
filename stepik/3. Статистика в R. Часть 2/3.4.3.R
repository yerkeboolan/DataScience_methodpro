normality.test  <- function(x){

my_vector <- c()

for(i in 1:length(x)) 
  my_vector <- shapiro.test(x[, i])$p.value

names(my_vector) <- names(x)

return(my_vector)

    
  
}




