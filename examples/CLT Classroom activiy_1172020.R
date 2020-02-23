name = c("Osita","Onyejekwe")

# step #1 

# We can easily plot the distribution for λ = 1.

curve(dexp(x,rate=1),0,4,lwd=2,col="red",ylab="p")

# The syntax curve(expr,from=,to=) sketches the graph of expr on the interval (from,to).

# In this example, from = 0 and to = 4.

# There is a the letter, namely "r", that is used to draw random numbers from a distribution. 
# Let's use the rexp command to draw 500 numbers at random from the exponential distribution having 
# mean 1 and standard deviation 1.


#Step #2 



#Step #3
 
#throw in a histogram 

hist(x,prob=TRUE)  #---- Not Normal, slightly skewed to the right 

#Step #4  # --- calculate the "balance point" of the mean 

mean(x)

########################################################################################
# Vector of Sample Means 
lambda=1
n=5
xbar=rep(0,500)
for (i in 1:500) { xbar[i]=mean(rexp(n,rate=lambda)) }
hist(xbar,prob=TRUE,breaks=12)
#####################################################################################
# try again with n = 5
lambda=1
 n=10
 xbar=rep(0,500)
 for (i in 1:500) { xbar[i]=mean(rexp(n,rate=1))}
 hist(xbar,prob=TRUE,breaks=12)
## note that this is still not normal ...still right skewed 
 
 
 
 #################################################################################
 
 # try again with n = 20 
 lambda=1
 n=20
 xbar=rep(0,500)
 for (i in 1:500) { xbar[i]=mean(rexp(n,rate=1))}
 hist(xbar,prob=TRUE,breaks=12) 
 # starting to look a bit normal here 
 
 ############################################################################
 
 # try with n = 32 (greater than 30 here)

 lambda=1
 n=30
 xbar=rep(0,500)
 for (i in 1:500) { xbar[i]=mean(rexp(n,rate=1))}
 hist(xbar,prob=TRUE,breaks=12) 
 #voila 
 ###########################################################################

 #check for the mean: mean of xbar: mean(xbar)

 # This mean is the same as the mean of the "parent" population (the exponential distribution with mean μ = 1)
 # from which our samples were drawn.

# 
#  # Kernel Density Plot
#  d <- density(mtcars$mpg) # returns the density data
#  plot(d) # plots the results
# 
#  x=d(500,rate=1)















