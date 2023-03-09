success <- 0.2
random_variables <- 1000
options(digits = 3)
trials <- rgeom(random_variables, success)
trials <- trials + 1
largest_value <- max(trials)
largest_value
table(trials)

x_values <- as.numeric(names(table(trials)))
y_values <- as.numeric(table(trials))

mean_trials <- mean(trials)
mean_trials <- sprintf("%.2f", mean_trials)
var_trials <- var(trials)
var_trials <- sprintf("%.2f", var_trials)
sd_trials <- sd(trials)
sd_trials <- sprintf("%.2f", sd_trials)

theoretical_mean_trials <- 1/success
theoretical_var_trials <- (theoretical_mean_trials)*(theoretical_mean_trials-1)
theoretical_sd_trials <- sqrt(theoretical_var_trials)
theoretical_mean_trials <- sprintf("%.2f", theoretical_mean_trials)
theoretical_var_trials <- sprintf("%.2f", theoretical_var_trials)
theoretical_sd_trials <- sprintf("%.2f", theoretical_sd_trials)

#Actual Values
mean_trials
var_trials
sd_trials 

#Theoretical Values
theoretical_mean_trials
theoretical_var_trials
theoretical_sd_trials 

#x <- seq(1, length(table(trials)))
plot(x_values, y_values, xlab = "Tries before success",
     ylab = "Tries repetition in 1000 trials", type = "h", col = "blue")
title(main = "Geometric Distribution with success = 0.2")


