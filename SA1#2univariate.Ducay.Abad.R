
probs = c(0)
while(sum(probs) != 1){
  print("Enter probs that sums up to 1")
  n <- as.numeric(readline("Enter the number of values: "))
  
  values <- numeric(n)
  probs <- numeric(n)
  for (i in 1:n) {
    values[i] <- as.numeric(readline(paste("Enter value", i, ": ")))
    probs[i] <- as.numeric(readline(paste("Enter probability for value", i, ": ")))
  }
  if (any(probs < 0) || any(probs > 1)) {
    stop("Probabilities must be in the interval [0, 1]")
  }
}
mean_val <- sum(values * probs)
var_val <- sum((values - mean_val)^2 * probs)

plot(values, probs, type = "h", main = "Probability Mass Function")
plot(values, cumsum(probs), type = "s", main = "Cumulative Distribution Function")

cat("Mean:", mean_val, "\n")
cat("Variance:", var_val, "\n")
