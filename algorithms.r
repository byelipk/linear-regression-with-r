# To describe the task at hand a bit more formally, our goal is, given a
# training set, to learn a function `h: X -> Y` so that `h(x)` is a good
# predictor for the corresponding value of `y`. This function `h` is called the
# hypothesis function. The hypothesis function is what we will use to make
# our predictions.
#
# When the target variable that we’re trying to predict is continuous, such as
# in our food truck example, we call the learning problem a regression problem.
#
# In simple linear regression our hypothesis function usually takes the form:
#
#     h(x) = theta0 + (theta1 * x)
#
# Here the input `x` is a feature of our dataset that we're using along with
# `theta` to predict the output value `y`.
#
# But what is `theta` and how do you calculate it? These are the *parameters*
# of our linear model. Our job now is to find the values for theta that
# give us the best prediction outcome.
#
# With different values for `theta` we get different hypothesis functions. What
# we want to do is minimize the values of theta such that `h(x)` is close to
# `y` for our training set.
#
# See: https://www.desmos.com/calculator/ajwu8ridom

hypothesis <- function(x0, x1, x2, x3, theta0, theta1, theta2, theta3) {
  # NOTE
  # x0 is always equal to 1
  return((theta0 * x0) + (theta1 * x1) + (theta2 * x2) + (theta3 * x3))
}

# A vectorized hypothesis function
h <- function(theta, x) {
  return(t(theta) %*% x)
}


# Ok, we know we want the difference between `h(x) - y` to be small. So how can
# we tell if we're heading in the right direction?
#
# One thing we might want to do is minimize the square difference of the
# expected profit of a food truck city and the actual profit:
#
#     foreach row in training_set
#       (h(x[i]) - y[i])^2
#
# That leaves us with an (m x 1) column vector. If we sum over the vector
# and perform some multiplication, we'll have our cost function.
#
# The cost function is there to help us find the values of theta that causes
# our hypothesis function to be minimized.
#
cost_function <- function(X, y, theta) {
  number_of_rows <- length(y)
  J <- rep(0, length=number_of_rows)

  for (i in 1:number_of_rows) {
    expected      <- h(theta, X[i, ])
    actual        <- y[i]
    squared_error <- (expected - actual)^2

    J[i] <- squared_error
  }

  return((1 / (2 * number_of_rows)) * sum(J))
}

# Ideally we'd like a piece of software to automatically find the minimized
# values of theta. That's what the gradient descent algorithm does.
gradient_descent <- function(X, y, theta, alpha, iterations) {
  m <- length(y)
  n <- dim(X)[2]
  T <- theta
  J_hist <- rep(0, length=iterations)

  for (iter in 1:iterations) {
    for (j in 1:n) {
      delta <- vector(mode="numeric", length=m)
      for (i in 1:m) {
        delta[i] = (h(theta, X[i, ]) - y[i]) * X[i, j]
      }
      J = (1/m) * sum(delta)
      T[j] = theta[j] - alpha * J;
    }


    # Update theta after each iteration of gradient descent
    theta = T

    J_hist[iter] <- cost_function(X, y, theta)
  }

  # Return minimized values of theta
  return(list(theta = theta, J = J_hist))
}


# We can also compute theta in one go using the normal equations method.
normalEqn <- function(X, y) {
  return(solve(t(X) %*% X) %*% t(X) %*% y)
}

feature_normalize <- function(X) {
  mu <- colMeans(X)        # Compute mean for each column
  sigma <- apply(X, 2, sd) # Compute sd for each column

  mean_normalization <- (X - mu)

  normalized_features <- t(apply(mean_normalization, 1, '/', sigma))

  return(list(Xn = normalized_features, mu = mu, sigma = sigma))
}
