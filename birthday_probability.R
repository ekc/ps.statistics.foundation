require(Rmpfr)
# Define (MPFR) permutation function
permu <- function(n, k) {
    return (factorialMpfr(n)/factorialMpfr(n-k))
}

count <- 50

p <- double(count)

for (k in 1:count) {
    # calculate probability in percent of
    # room of k people to have people with the same birthday
    d <- (1 - permu(365, k)/(mpfr(365, precBits = 1024) ^ k)) * 100
    p[k] <- asNumeric(d)
}

plot(1:count, p,
     xlab = "Number of people in the room",
     ylab = "Probability in %",
     main = "Birthday probability",
     sub = "Probability of people with the same birthday")
