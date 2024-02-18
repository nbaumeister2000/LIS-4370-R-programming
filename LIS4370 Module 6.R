A <- matrix(c(2,0,1,3), ncol = 2)
B <- matrix(c(5,2,4,-1), ncol = 2)

A+B
A-B

diag(x = c(4,1,2,3))


matr <- diag(x = c(3,3,3,3,3))
matr[1,2:5] <- c(1,1,1,1)
matr[2:5,1] <- c(2,2,2,2)
matr
