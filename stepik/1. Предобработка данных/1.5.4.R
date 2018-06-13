fixed_vector <- my_vector 
fixed_vector[is.na(fixed_vector)] <- mean(fixed_vector, na.rm=TRUE)

fixed_vector <- replace(my_vector, is.na(my_vector), mean(my_vector, na.rm = T))




