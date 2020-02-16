set.seed(19889)
x = rnorm(10)
x

set.seed(19889)
x2 = rnorm(10)
x2

set.seed(11)
x = seq(0,1, length.out = 25)
x
y = 2 * x + 1 + rnorm(25,0,0.5)
y

lmod = lm(y~x)
yhat = fitted(lmod)
summary(lm(y~yhat))

plot(yhat, y, xlim = c(0,3), ylim = c(0,3)) 
abline(lm(y~yhat))
