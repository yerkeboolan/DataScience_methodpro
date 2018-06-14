library(ggplot2)
data("diamonds")
head(diamonds)

general <-  diamonds
sample <- sample_frac(diamonds, 0.2)
head(general)

# Visualization

# qplot - quick plot
# qplot(x, y, )

?qplot

qplot(x = carat, y = price, color = cut, data = sample)
boxplot(sample$carat)
hist(sample$carat)

#HW как избавиться от выброса данных

?sample_frac()