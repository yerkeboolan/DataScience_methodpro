fill_na <- function(x) {
  fit <- lm(y ~ x_1 + x_2, x)
  x$y_full <- predict(fit, x)
  my_y <- which(!is.na(x[[3]]))
  x$y_full[my_y] <- x[[3]][my_y]
  return (x)
}