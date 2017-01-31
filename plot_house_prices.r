source('algorithms.r')

data = read.csv('data/houses.csv', header=TRUE);

X1 <- data[, 1:2];
y1 <- data[, 3];
m <- length(y1);

# Convert data into a matrix
X2 <- matrix(unlist(X1), nrow=m)
y2 <- unlist(y1)

# Normalize data
X3 <- scale(X2)

# Add intercept term
X4 <- cbind(rep(1.0, m), X3[1:m, ])

# Initialize to run gradient descent
alpha <- 0.01;
iters <- 400;
theta <- rep(0, n)

# Run gradient descent
result <- gradient_descent(X4, y2, theta, alpha, iters)

theta  <- result$theta
J_hist <- result$J
mu     <- attr(X3, "scaled:center")
sigma  <- attr(X3, "scaled:scale")

# Plot the cost function J
plot(1:iters, J_hist, 'l')

# Get theta using normal equation method
# result <- normalEqn(X2, y)

# Predictions
size_norm  <- (1650 - mu[1]) / sigma[1]
rooms_norm <- (3 - mu[2]) / sigma[2]
price      <- c(1, size_norm, rooms_norm) %*% result$theta
