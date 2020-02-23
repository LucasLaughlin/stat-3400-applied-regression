# PROBLEM 5
# Null : mu <= 300
# Alt  : mu > 300
xbar = 305 
mu = 300
sigma = 30
n = 50
alpha=0.01

z = (xbar-mu)/(sigma/sqrt(n))
pval = pnorm(z, lower.tail = FALSE)
pval
# 0.1192964 
# pval > alpha = 0.05 so we can accept null hypothesis. Engines mean runtime is not greater than 300 minutes on one gallon of gasoline with 95% certainty


# PROBLEM 6
# Null : mu = 80
# Alt  : mu != 80
xbar = 78
mu = 80
s = 2.5
n = 50

t = (xbar-mu)/(s/sqrt(n))
t
# -5.656854

alpha = 0.05
t.half.alpha = qt(1-alpha/2, df=n-1)
c(-t.half.alpha, t.half.alpha)
# -2.009575  2.009575
# test statistic t lies outside of critical values for 95% confidence interval so we can reject null hypothesis and therefore accept alternate hypthesis that the machine is not working correctly


# PROBLEM 7
# Null : mu >= 2
# Alt  : mu < 2
xbar = 1.8
mu = 2
s = 0.15
n = 10
alpha = 0.01

t = (xbar-mu)/(s/sqrt(n))
t
# -4.21637

t.alpha = qt(1-alpha, df=n-1)
-t.alpha
# -2.821438
# test statistic t is less than the critical value for 99% confidence interval so we can reject the null hypothesis and therefore accept the alternative hypothesis that the facoties abtteries with a lifespan les than 2 years


# PROBLEM 8
# Null : mu = 168
# Alt  : mu != 168
mu = 168
xbar = 169.5
s = 3.9
n = 36

t = (xbar-mu)/(s/sqrt(n))
pval = 2 * pt(-abs(t), df=n-1)
pval
# 0.02704806
# pval < alpha = 0.05 so we can reject the null hypothesis. The average weight of town citizens is different than 168 with 95% certainty


# PROBLEM 9
# Null: mu >= 5
# Alt: mu < 5
mu = 5
n = 40
xbar = 4.8
s = 0.5

t = (xbar-mu)/(s/sqrt(n))
pval = pt(t, df=n-1)
pval
# 0.007781681
# pval < alpha = 0.02 so we can reject the null hypothesis. The average lifespan of the car batteries is less than 5 years with 98% certainty