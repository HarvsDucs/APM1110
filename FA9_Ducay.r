##### For number 1 #####
mean <- 200
sd <- sqrt(256)
a <- pnorm(224, mean = mean, sd = sd, lower.tail = FALSE)
a
#Therefore for letter a, probability is approx 6.68%

b <- pnorm(224, mean = mean, sd = sd) - pnorm(186, mean = mean, sd = sd)
b
#Therefore for letter b, probability is approx 74.24%

c <- qnorm(0.25, mean = mean, sd = sd)
c
#Therefore for letter c, it is approx 189.21 volts

p_larger_than_210 <- pnorm(210, mean = mean, sd = sd, lower.tail = FALSE)
p_less_than_240_and_larger_than_210 <- pnorm(240, mean = mean, sd = sd) - pnorm(210, mean = mean, sd = sd)
probability <- p_less_than_240_and_larger_than_210/p_larger_than_210
probability
#By Bayes theorem the probability on letter d is 97.66%

Q1 <- qnorm(0.25, mean = mean, sd = sd)

Q3 <- qnorm(0.75, mean = mean, sd = sd)
interquartile_range <- Q3 - Q1
interquartile_range
#Therefore, the interquartile range is approx 23.58

p_larger_than_210 <- pnorm(210, mean = mean, sd = sd, lower.tail = FALSE)
p_less_than_220_and_larger_than_210 <- pnorm(220, mean = mean, sd = sd) - pnorm(210, mean = mean, sd = sd)
probability <- p_less_than_220_and_larger_than_210/p_larger_than_210
probability
#By Bayes theorem the probability on letter f is 60.28%

p_larger_than_200 <- pnorm(200, mean = mean, sd = sd, lower.tail = FALSE)
p_larger_than_220 <- pnorm(220, mean = mean, sd = sd, lower.tail = FALSE)
probability <- p_larger_than_220/p_larger_than_200 
probability
#The probability on letter g is approx 21.13%

##### For number 2 #####

bounds <- qnorm(0.95, mean = 25, sd = 12)
bounds
#The bounds for 95% and below is approx 44.74

bounds <- qnorm(0.1, mean = 25, sd = 12, lower.tail = FALSE)
bounds
#The bounds for 10% and above is approx 40.38

