x <- 1:4
y <- 3:6

setequal(x, x)
setequal(x, y)
setequal(y, c(6,5,4,3))
setequal(y, c(6:3))

is.element(2, x)
2 %in% y
is.element(x, y)

union(x, y)
intersect(x, y)
setdiff(x, y)

z <- c('a', 'b', 'c')
mode(x)
mode(z)
a <- union(x, z)
mode(a)
intersect(x, z)
