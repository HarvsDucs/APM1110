lower_limit <- -pi
upper_limit <- pi

pdf <- function(x) {
  ifelse(abs(x) <= pi, 1/(2*pi), 0)
}

p1 <- integrate(pdf, lower = lower_limit, upper = 0)$value
p1
# P X <= 0 is equal to 0.5

p2 <- integrate(pdf, lower = lower_limit, upper = pi/2)$value
p2
# P X <= pi/2 is equal to 0.75