filtered.cor <- function(x){
  num_type <- sapply(x, function(x) is.numeric(x))
  matrix_cor <- cor(x[, num_type])
  diag(matrix_cor) <- 0
  return(matrix_cor[which.max(abs(matrix_cor))])
}




