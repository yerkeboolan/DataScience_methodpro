df2 <- read.csv(url('https://stepic.org/media/attachments/lesson/11505/Pillulkin.csv'))

df2$patient <- as.factor(df2$patient)

str(df2)

fit2 <- aov(df2$temperature ~ df2$pill + Error(df2$patient/df2$pill))
summary(fit2)