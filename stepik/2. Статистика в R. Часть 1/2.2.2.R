df <- read.csv(url('https://stepic.org/media/attachments/lesson/11504/lekarstva.csv'))

t.test(df$Pressure_before, df$Pressure_after, paired = T)