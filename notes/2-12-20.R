data(gala, package = "faraway")
head(gala[,-2])

lmod = lm(Species ~ Area + Elevation + Nearest + Scruz + Adjacent, data = gala)
require(faraway)
summary(lmod)
lmod

x = model.matrix(~Area + Elevation + Nearest + Scruz + Adjacent, gala)

# Response y

y = gala$Species

# t() -> transpose function
# %*% -> matrix multiplication
# solve(A) -> computes inverse
# solve(A,b) -> solves, Ax = b

xtxi = solve(t(x)%*%x)

beta_hat = xtxi%*%t(x)%*%y

# Better methodolofy for large data sets: more efficient but still us lm() function
beta_hat_better = solve(crossprod(x,x), crossprod(x,y))

names(lmod)
lmodsum = summary(lmod)
lmodsum

names(lmodsum)
names

# Calculate estimated deviation

# method 1 ---hard way

sqrt(deviance(lmod)/df.residual(lmod))

lmodsum$sigma

xtxi = lmodsum$cov.unscaled
sqrt(diag(xtxi))*60.975

# or 

lmodsum$coef[,2]