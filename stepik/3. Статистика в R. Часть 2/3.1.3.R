smart_cor <- function(x){ 
  if (shapiro.test(x[[1]])$p < 0.05 | shapiro.test(x[[2]])$p < 0.05) { 
    return(cor.test(x[[1]], x[[2]], method = 'spearman')$estimate) 
  } else { 
    return(cor.test(x[[1]], x[[2]], method = 'pearson')$estimate)}}