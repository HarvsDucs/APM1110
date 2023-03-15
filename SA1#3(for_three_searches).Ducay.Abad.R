num_sims <- 10000

p <- 0.6

num_sites_searched_cond <- rep(0, num_sims)

for (i in 1:num_sims) {
  num_searched <- 3 
  while (runif(1) > p && num_searched < 100) { # Maximum number of searches is set to 100
    num_searched <- num_searched + 1
  }

  num_sites_searched_cond[i] <- num_searched
}

mean_searched_cond <- mean(num_sites_searched_cond)
var_searched_cond <- var(num_sites_searched_cond)

hist(num_sites_searched_cond, prob = TRUE, main = "Simulated PDF of Number of Sites Searched",
     xlab = "Number of Sites Searched after 3", col = "lightblue")
curve(dgeom(x, p), add = TRUE, col = "red", lwd = 2)

cat("Results:\n")
cat("Number of simulations:", num_sims, "\n")
cat("Probability that any site contains the key phrase:", p, "\n")
cat("Conditional mean number of sites searched:", mean_searched_cond, "\n")
cat("Conditional variance of number of sites searched:", var_searched_cond, "\n")
