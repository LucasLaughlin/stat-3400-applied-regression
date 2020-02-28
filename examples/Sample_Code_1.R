name = c("Osita", "Onyejekwe")
"Cental Limit Theorem or the Law of Large Numbers"

# Note CTL+L Clears Console 
# Note rm(list = ls(all.names = TRUE)) Clears workspace 
# To comment out Block of code: CTRL(Command)+SHIFT+C


# Question Number 1 
#Let's use the rnorm command to draw 500 numbers at random from
#a normal distribution having mean 100 and standard deviation 10.

x=rnorm(500,mean=100,sd=10)     #### run this line ####

# Question Number 2
# A histogram of 500 random numbers drawn from a normal distribution with mean 100 and standard deviation 10.

hist(x,prob=TRUE)

# Question Number 3
#Draw a new set of 500 random numbers from the normal distribution having mean 100 and standard deviation 10.
#along with its histogram 

x=rnorm(500,mean=100,sd=10)
hist(x,prob=TRUE, ylim=c(0,0.04)) 

# The histogram in Figure 2 is different from the histogram shown in Figure 1, owing to the "random" selection of numbers. 
# However, it does share some common traits with the histogram shown in Figure 1: (1) it appears "normal" in shape, (2) 
# it appears to be "balanced" or "centered" about 100, and (3) all data appears to occur within 3 increments of 10 of the mean. 
# This is strong evidence that the random numbers have been drawn from a normal 
# distribution having mean 100 and standard deviation

# Question Number 4

#Superimpose a normal curve having mean 100 and standard deviation 10.

curve(dnorm(x,mean=100,sd=10),70,130,add=TRUE,lwd=2,col="orange")

# In its simplest form, the syntax curve(f(x),from=,to=) draws the "function" defined by f(x) on the interval (from,to). 

# Our function is dnorm(x,mean=100,sd=10). The curve command sketches this function of x on the interval (from,to).

# The notation "from=" and "to=" may be omitted if the arguments are submitted in the proper order to the curve command, 
# function first, value of "from" second, then value of "to" third. That is what we've done, substituting 70 for "from" and 130
# for "to".If the argument "add" is set to TRUE, as we have done, then the curve is "added" 
# to the existing figure.

# If this argument is omitted, or if it is set to FALSE, then a new plot is drawn,
# erasing any previous graphics drawn.

#######################################The Distribution of Sample Means####################################

# The Distribution of Sample Means
# In our previous examples, we drew 500 random numbers from a normal distribution with mean 100 and standard deviation 10. 
# This is called "drawing a sample of size 500" from the normal distribution with mean 100 and standard deviation 10. 
# This leads to a sample of 500 random numbers. One immediate question we can ask is "what is the mean of our sample?"

x=rnorm(500,mean=100,sd=10)
mean(x)

#Producing a Vector of Sample Means 

mu= 100; sigma = 10; n=5
xbar = rep(0,500)      #xbar is a vecotor containing 500 zeros 

# The rep command "repeats" the entry zero 500 times. As a result, 
# the vector xbar now contains 500 entries, each of which is zero.

for (i in 1:500) { xbar[i]=mean(rnorm(n,mean=mu,sd=sigma)) }
hist(xbar,prob=TRUE, xlim=c(70,130),ylim=c(0,0.1))
mean(xbar)

mu=100; sigma=10
n=10
xbar=rep(0,500)
for (i in 1:500) {xbar[i]=mean(rnorm(n,mean=mu,sd=sigma))}
hist(xbar,prob=TRUE,breaks=12,xlim=c(70,130),ylim=c(0,0.1))
