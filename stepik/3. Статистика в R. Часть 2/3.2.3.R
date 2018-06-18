new_data <- attitude

ffitt <- lm(rating ~ complaints * critical, new_data)
summary(ffitt)