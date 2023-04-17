lower_limit <- 2
upper_limit <- 6
pdf <- function(x) {
  0.025 * x + 0.15
}
integral <- integrate(pdf, lower = lower_limit, upper = upper_limit)$value
integral

#We can see from the definite integral of 0.025x + 0.15, from 2 to 6, equals to the value
# of 1. Probability should equal one so in most cases, if not all, does only 1 value fit
# for a constant such as b for the function to reach a definite integral value of 1, which is
# a value of 15 for b. Also, the area under the curve from 2 to 6 is equal to 1.

lower_limit2 <- 3
upper_limit2 <- 6
pdf <- function(x) {
  0.025 * x + 0.15
}
integral <- integrate(pdf, lower = lower_limit2, upper = upper_limit2)$value
integral
#Area under the curve and probability is 0.7875 or 78.75%

lower_limit <- 2
upper_limit <- 6
expected_value <- integrate(function(x) {x * pdf(x)}, lower = lower_limit, upper = upper_limit)$value
expected_value
#Expected value is 4.133


