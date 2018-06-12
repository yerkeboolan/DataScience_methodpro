passvector <- as.vector(AirPassengers)
myvector <- c(passvector[length(passvector)], passvector[-length(passvector)])
diff <- passvector - myvector
res = passvector[diff > 0]
good_months <- res