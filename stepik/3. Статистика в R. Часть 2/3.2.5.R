library(ggplot2)
# сначала переведем переменную am в фактор
mtcars$am <- factor(mtcars$am)

# теперь строим график
my_plot <- ggplot(mtcars, aes(wt, mpg, col = "am")) + geom_smooth(method = "lm")

my_plot