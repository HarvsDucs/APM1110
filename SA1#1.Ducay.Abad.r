sumx <- 0
while (sumx != 1){
  print("Please input valid x values that sum up to 1")
  x1 <- as.numeric(readline("Enter a value for x1 (0.1 < x1 < 0.4): "))
  while (x1 < 0.1 || x1 > 0.4) {
    x1 <- as.numeric(readline("Invalid input! Please enter a value for x1 (0.1 < x1 < 0.4): "))
  }
  x2 <- as.numeric(readline("Enter value for x2 (0.1 < x2 < 0.4): "))
  while (x2 < 0.1 || x2 > 0.4) {
    x2 <- as.numeric(readline("Invalid input! Please enter a value for x2 (0.1 < x2 < 0.4): "))
  }
  x3 <- as.numeric(readline("Enter value for x3 (0.1 < x3 < 0.4): "))
  while (x3 < 0.1 || x3 > 0.4) {
    x3 <- as.numeric(readline("Invalid input! Please enter a value for x3 (0.1 < x3 < 0.4): "))
  }
  sumx <- x1+x2+x3
}
cat("The values you entered are: x1=", x1, ", x2=", x2, ", x3=", x3, "\n")

#########
#########

sumy <- 0
while (sumy != 0.12){
  print("Please input valid y values that sum up to 0.12")
  y1 <- as.numeric(readline("Enter a value for y1 (0.01 < y1 < 0.05): "))
  while (y1 < 0.01 || y1 > 0.05) {
    y1 <- as.numeric(readline("Invalid input! Please enter a value for y1 (0.01 < y1 < 0.05): "))
  }
  y2 <- as.numeric(readline("Enter value for y2 (0.01 < y2 < 0.05): "))
  while (y2 < 0.01 || y2 > 0.05) {
    y2 <- as.numeric(readline("Invalid input! Please enter a value for y2 (0.1 < y2 < 0.4): "))
  }
  y3 <- as.numeric(readline("Enter value for y3 (0.01 < y3 < 0.05): "))
  while (y3 < 0.01 || y3 > 0.05) {
    y3 <- as.numeric(readline("Invalid input! Please enter a value for y3 (0.01 < y3 < 0.05): "))
  }
  sumy <- y1+y2+y3
}
cat("The values you entered are: y1=", y1, ", y2=", y2, ", y3=", y3, "\n")

prob_defective <- x1*y1 + x2*y2 + x3*y3
prob_defective
paste("Probability that a random product is defective is", prob_defective)




