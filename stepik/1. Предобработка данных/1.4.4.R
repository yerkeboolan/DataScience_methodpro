a <- AirPassengers
i <- 1
moving_average <- c()
for (i in 1:135) {
  mean_step <- mean(a[i:(i+9)])
  moving_average[i] <- mean_step 
}