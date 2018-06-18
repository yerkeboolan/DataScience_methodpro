corr.calc <- function(x) {
vector_mine <- c()
cor.test(x[, 1], x[, 2])
#cor.test(mydf$mpg, mydf$drat)
#summary(cor.test(mydf$mpg, mydf$drat))

#vector_mine <- c(cor.test(mydf$mpg, mydf$drat)$estimate, cor.test(mydf$mpg, mydf$drat)$p.value)
vector_mine <- c(cor.test(x[, 1], x[, 2])$estimate, cor.test(x[, 1], x[, 2])$p.value)