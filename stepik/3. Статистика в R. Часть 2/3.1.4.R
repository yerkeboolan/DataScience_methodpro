mydf <- read.table('dataset_11508_12 (3).txt', sep = '')

fit <- lm(mydf$V1 ~ mydf$V2, mydf)
summary(fit)

print(fit$coefficients, 2)


