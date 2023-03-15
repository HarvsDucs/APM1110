num_sims <- 10000

p <- 0.6

num_sites_searched <- rep(0, num_sims)


for (i in 1:num_sims) {
  num_searched <- 0
  
  while (runif(1) > p) {
    num_searched <- num_searched + 1
  }

  num_sites_searched[i] <- num_searched
}

mean_searched <- mean(num_sites_searched)
var_searched <- var(num_sites_searched)

hist(num_sites_searched, prob = TRUE, main = "Simulated PDF of Number of Sites Searched",
     xlab = "Number of Sites Searched", col = "lightblue")
curve(dgeom(x, p), add = TRUE, col = "red", lwd = 2)

cat("Results:\n")
cat("Number of simulations:", num_sims, "\n")
cat("Probability that any site contains the key phrase:", p, "\n")
cat("Mean number of sites searched:", mean_searched, "\n")
cat("Variance of number of sites searched:", var_searched, "\n")
