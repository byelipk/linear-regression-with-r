h <- function(theta, x) {
  return(t(theta) * x)
}

cost_function <- function(X, y, theta) {
  m <- length(y)
  J <- vector(mode="numeric", length=m)

  for (i in 1:m) {
    J[i] <- (sum(h(theta, X[i, ])) - y[i])^2
  }

  return((1 / (2 * m)) * sum(J))
}

X = matrix(1, nrow=4, ncol=2)
X[1, 2] = 2
X[2, 2] = 3
X[3, 2] = 4
X[4, 2] = 5

y <- c(7,6,5,4)
theta <- c(0.1, 0.2)
cost_function(X, y, theta)

# [1] 11.945


X = matrix(1, nrow=4, ncol=3)
X[1, 2] = 2
X[1, 3] = 3
X[2, 2] = 3
X[2, 3] = 4
X[3, 2] = 4
X[3, 3] = 5
X[4, 2] = 5
X[4, 3] = 6

y <- c(7,6,5,4)
theta <- c(0.1, 0.2, 0.3)
cost_function(X, y, theta)
