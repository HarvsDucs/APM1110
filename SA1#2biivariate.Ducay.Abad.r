
probs_Y <- c(0)
probs_X <- c(0)
while(sum(probs_X)+sum(probs_Y) != 1){
  print("Input values that adds up to 1")
  n <- as.numeric(readline("Enter the number of values for X: "))
  m <- as.numeric(readline("Enter the number of values for Y: "))
  
  values_X <- numeric(n)
  probs_X <- numeric(n)
  
  values_Y <- numeric(m)
  probs_Y <- numeric(m)
  
  probs_XY <- matrix(numeric(n * m), nrow = n, ncol = m)
  
  for (i in 1:n) {
    values_X[i] <- as.numeric(readline(paste("Enter value for X", i, ": ")))
    probs_X[i] <- as.numeric(readline(paste("Enter probability for value X", i, ": ")))
    
    if (any(probs_X[i] < 0) || any(probs_X[i] > 1)) {
      stop("Probabilities must be in the interval [0, 1]")
    }
  }

  for (j in 1:m) {
    values_Y[j] <- as.numeric(readline(paste("Enter value for Y", j, ": ")))
    probs_Y[j] <- as.numeric(readline(paste("Enter probability for value Y", j, ": ")))

    if (any(probs_Y[j] < 0) || any(probs_Y[j] > 1)) {
      stop("Probabilities must be in the interval [0, 1]")
    }
  }
}
marginal_X <- colSums(probs_XY)
marginal_Y <- rowSums(probs_XY)

mean_X <- sum(values_X * marginal_X)
mean_Y <- sum(values_Y * marginal_Y)

var_X <- sum((values_X - mean_X)^2 * marginal_X)
var_Y <- sum((values_Y - mean_Y)^2 * marginal_Y)

library(ggplot2)
pdf_df <- data.frame(x = values_X, y = probs_X)
cdf_df <- data.frame(x = values_X, y = cumsum(probs_X))

pdf_plot <- ggplot(pdf_df, aes(x, y)) +
  geom_bar(stat = "identity", fill = "blue", alpha = 0.5) +
  ggtitle("Probability Density Function") +
  xlab("Values of X") +
  ylab("Probability")

cdf_plot <- ggplot(cdf_df, aes(x, y)) +
  geom_line(color = "red", linewidth = 1) +
  ggtitle("Cumulative Distribution Function") +
  xlab("Values of X") +
  ylab("Cumulative Probability")

pdf_plot
cdf_plot

cat("Marginal distribution of X:\n")
print(data.frame(values_X, probs_X, marginal_X))
cat("\nMarginal distribution of Y:\n")
print(data.frame(values_Y, probs_Y, marginal_Y))

  

  

  
  
  
       