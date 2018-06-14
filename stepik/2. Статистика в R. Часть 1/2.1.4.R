diamonds$factor_price <- factor(ifelse(diamonds$price >= mean(diamonds$price), 1, 0))
diamonds$factor_carat <- factor(ifelse(diamonds$carat >= mean(diamonds$carat), 1, 0))
main_stat <- chisq.test(diamonds$factor_price, diamonds$factor_carat)$statistic




