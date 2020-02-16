# Calculate the confidence interval for p

# qnorm function specify the upper tale probability of 0.025

# mean and variance for the standard normal distribution is between 0 and 1

# since the probability os in the upper tail, we state that the ower.tail=FALSE

library(binom)

phat = 0.576
n=1000

z=qnorm(0.025, mean=0, sd=1, lower.tail=FALSE)

z

ME = z*sqrt(phat*(1-phat)/n)

phat +c(-ME, +ME)

binom.confint(phat, n, conf.level=0.95, methods = 'asymptotic')
ME = 2*sqrt(1/2*1/2/n)
phat +c(-ME, +ME)

# This method yields a CI  that is slightly wider than the first beacuse phat is closer to 1/2.
# Use first method for homework initially.