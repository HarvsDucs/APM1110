min_length <- 2
max_length <- 12

reject_length <- 10

scrapping_range <- max_length - reject_length
total_range <- max_length - min_length

probability <- scrapping_range/total_range
#probability that a memory stick will be scrapped
probability

memory_sticks <- runif(50, min = 2, max = 12)

hist(memory_sticks, main="Stick Lengths", xlab ="Length in mm", ylab ="Frequency")

# Calculate the simulated mean and variance
simulated_mean <- mean(memory_sticks)
simulated_var <- var(memory_sticks)

#simulated mean
print(simulated_mean)
#simulated var
print(simulated_var)










