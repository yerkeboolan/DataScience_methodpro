df3 <- read.csv(url('https://stepic.org/media/attachments/lesson/11505/Pillulkin.csv'))

df3$patient <- as.factor(df3$patient)

str(df3)

fit4 <- aov(df3$temperature ~ df3$pill * df3$doctor + Error(df3$patient / df3$pill * df3$doctor), data = df3)
summary(fit4)