##### For number 1 #####
a <- pexp(0.25, 4)
a
#Therefore for letter a, probability is approx 63.21%

b <- 1 - pexp(0.5, 4)
b
#Therefore for letter b, probability is approx 13.53%

c <- pexp(1, 4) - pexp(0.25, 4)
c
#Therefore for letter c, probability is approx 34.96%

###### For number 3 ######
a <- (1 - ppois(2, lambda = 2))
a
#Therefore for letter a, probability is approx 32.33%

b <- (1 - pexp(0.5, 2))
b
#Therefore for letter b, probability is approx 36.79%

c <- pexp(0.5, 2)
c
#Therefore for letter c, probability is approx 63.21%

d <- pexp(1, 2) - pexp(0.5, 2)
d
#Therefore for letter d, probability is approx 23.25%

##### For number 7 #####
a <- (1 - pexp(1/6, 15))
a
#Therefore for letter a, probability is approx 8.21%

b <- ppois(8, lambda = 15)
b
#Therefore for letter b, probability is approx 3.74%

c <- pexp(0.5, 15) - pexp(0.25, 15)
c
#Therefore for letter c, probability is approx 2.30%

#We need to find x such that F(x; λ) = 0.75
visits_hourly <- 15

d <- qpois(0.75, visits_hourly)
d
#Therefore for letter d, the top quartile is 18, meaning that 75% of the time, the website receives 18
### or fewer visits per hour.

