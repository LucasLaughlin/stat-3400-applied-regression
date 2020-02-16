data(trees)
names(trees)
nrow(trees)

attach(trees)
n<-length(Height) # of observations/sample size
n

N <- 100 # population size we know there are 100 trees out in forrest

m <- mean(Height)
m  # sample mean

conf.level <- 0.9 # 90% confident that pop. mean falls within +/- something of sample mean

z <- qt((1+conf.level)/2, df=n-1)
z

StdE = sd(Height)/sqrt(n)
ci = z*StdE
ci 

m + ci # upper limit
m - ci # lower limit

# Our confidence interval is thus between [74.05764, 77.94236]. We therefore conclude
# that our sample size was 31, but we are 90% confident that our population
# mean height is greater than 74 but less than 78