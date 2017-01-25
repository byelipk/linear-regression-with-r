v1 <- c(1,1,1,1)
v2 <- c(5,2,4,5)
X <- matrix(c(v1, v2), nrow=4, ncol=2)

y <- c(1, 6, 4, 2)
theta <- c(0, 0)
alpha <- 0.01
num_iters <- 1000;

result <- gradient_descent(X, y, theta, alpha, num_iters)

# % result$theta =
# %     5.2148
# %    -0.5733

v1 <- c(2,7,1,3)
v2 <- c(1,1,8,7)
v3 <- c(3,9,1,4)
X <- matrix(c(v1,v2,v3), nrow=length(v1))

y <- c(2, 5, 5, 6)
theta <- c(0, 0, 0)
alpha <- 0.01
num_iters <- 100

result <- gradient_descent(X, y, theta, alpha, num_iters)

# % result$theta =
# %
# %    0.23680
# %    0.56524
# %    0.31248
