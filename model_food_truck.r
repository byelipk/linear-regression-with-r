source("algorithms.r")

training_set <- read.csv("data/food-trucks.csv", header=TRUE)
x <- training_set$population
y <- training_set$profit

ones <- rep(1, length(y))
X <- matrix(c(ones, x), nrow=length(y))
theta <- rep(0, dim(X)[2])

# Some gradient descent settings
iterations <- 1500
alpha <- 0.01

# run gradient descent
result <- gradient_descent(X, y, theta, alpha, iterations)

plot(1:iterations, result$J, 'l')
