z <- matrix(1:20, nrow = 4, ncol = 5)
print(z)

z <- matrix(1:20, nrow =5, ncol = 4)
print(z)

x <- 1:4
y <- 5:8
z <- matrix(1:20, nrow = 4, ncol = 5)
print(x)
print(y)
print(z)

m1 <- cbind(x,y)
#cbind: x와 y를 열방향으로 묶어라
m1

m2 <- rbind(x,y)
#rbind: x와 y를 행방향으로 묶어어라
m2

m3 <- rbind(m2,x)
m3

m4 <- cbind(z,x)
m4
