# Lucas Laughlin

# QUESTION 6
xbar_q6 = rnorm(600, mean=100, sd=10)

# QUESTION 7
hist(xbar_q6, prob = TRUE, xlim=c(70, 130), ylim=c(0,0.06))

# QUESTION 8
xbar_q7 = rnorm(600, mean=100, sd=10)
hist(xbar_q7, prob = TRUE, xlim=c(70, 130), ylim=c(0,0.06), breaks = 30)

# QUESTION 9
curve(dnorm(x, mean= 100, sd=10), add=TRUE, lwd=2)

# QUESTION 10
xbar=1:1000
xbar_n20=1:1000

for (i in 1:1000){
  xbar[i] = mean(rnorm(10, mean=250, sd=35))
}
hist(xbar, prob = TRUE, xlim=c(200, 300), ylim=c(0,0.06), breaks = 30)
mu_xbar = mean(xbar)

for (i in 1:1000){
  xbar_n20[i] = mean(rnorm(20, mean=250, sd=35))
}
hist(xbar_n20, prob = TRUE, xlim=c(200, 300), ylim=c(0,0.06), breaks = 30)
mu_xbar_n20 = mean(xbar_n20)

# The standard deviation on the sample sizes of 20 produces 
# less spread and a more accurate representation of the
# population mean. The mean of the sample is also usually closer 
# to the population mean, after rerunning the code numerous times