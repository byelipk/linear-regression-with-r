source('food-truck-model.r')

data = read.csv('data/houses.csv', header=TRUE);

X <- data[, 1:2];
y <- data[, 3];
m <- length(y);

X <- matrix(unlist(X), nrow=47)
y <- unlist(y)

# Add intercept term
X2 <- cbind(iterm = rep(1, m), X1[1:m,])

alpha = 0.01;
num_iters = 400;
n <- dim(X2)[2]
theta <- rep(0, n)

result <- gradient_descent(X2, y, theta, alpha, num_iters)

print(result$theta)

# Get theta using normal equation method
result <- normalEqn(X2, y)
