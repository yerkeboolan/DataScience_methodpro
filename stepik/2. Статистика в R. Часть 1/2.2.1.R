x <- subset(ToothGrowth, supp == "VC" & dose == 2)
y <- subset(ToothGrowth, supp == "OJ" & dose == 0.5)
t_stat <- t.test(x$len, y$len)$statistic






