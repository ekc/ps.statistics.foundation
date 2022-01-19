N <- 1000

# create a boolean vector of size N using
# random function with uniform distribution
flips <- runif(N, min = 0, max = 1) >= 0.5
sum(flips) / N

# create a sample space vector [0,1]
sample.space <- c(0,1)
# sample the sample space N times with replacement
# with P(0) = 0.5 and P(1) = 0.5
flips <- sample(sample.space, size = N, replace = TRUE, prob=c(0.5,0.5))
sum(flips) / N
