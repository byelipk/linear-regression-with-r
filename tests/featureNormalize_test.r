result = feature_normalize(c(1,2,3))

# % result

# % Xn =
# %   -1
# %    0
# %    1
# %
# % mu =  2
# % sigma =  1


v1 <- c(8,3,4)
v2 <- c(1,5,9)
v3 <- c(6,7,2)
X <- matrix(c(v1,v2,v3), nrow=3)
result = feature_normalize(X)

# % result
#
# % Xn =
# %    1.13389  -1.00000   0.37796
# %   -0.75593   0.00000   0.75593
# %   -0.37796   1.00000  -1.13389


v1 <- c(-1,8,3,4)
v2 <- c(-1,1,5,9)
v3 <- c(-1,6,7,2)
X <- matrix(c(v1,v2,v3), nrow=4)
result = feature_normalize(X)

# % results
#
# % Xn =
# %   -1.21725  -1.01472  -1.21725
# %    1.21725  -0.56373   0.67625
# %   -0.13525   0.33824   0.94675
# %    0.13525   1.24022  -0.40575
