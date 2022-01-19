number_of_simulations <- 1000
wins <- logical(length = number_of_simulations)

# start with fair probability
p <- 0.5
p1_balance <- 98
p2_balance <- 2
# fair game: 0.5, 98, 2, expecting 0.98
# unfair game: 0.4, 99, 1, expecting 2/3
for (i in 0:number_of_simulations) {
    # round i of simulation
    # reset capital (balance)
    p1b <- p1_balance
    p2b <- p2_balance

    # do the simulation
    while ((p1b > 0) && (p2b > 0)) {
        p1_wins <- runif(1) < p
        if (p1_wins) {
            p1b <- p1b + 1
            p2b <- p2b - 1
        } else {
            p1b <- p1b - 1
            p2b <- p2b + 1
        }
    }
    wins[i] <- p1b > 0
}

print(paste(
    "winning rate of player 1 is ",
    (sum(wins) / number_of_simulations)
))