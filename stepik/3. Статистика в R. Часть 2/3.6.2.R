library("ggplot2")

ToothGrowth$dose = as.factor(ToothGrowth$dose)

obj <- ggplot(data = ToothGrowth, aes(supp, len, fill = dose)) + geom_boxplot()
              
obj
              
              
              