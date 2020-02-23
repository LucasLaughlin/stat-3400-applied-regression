sample<-c(76,89,84,73,69,97,92,85,58,77)  #data 
n  = length(sample)         #sample size 
mean= (sum(sample))/n      #sample mean              ### PART A #####
df = n -1                  #degrees of freedom 
stdDev=sqrt(var(sample))  #standard deviation       ### PART B #### 
t <- qt(0.95, df)       # tscore 
se <- stdDev/sqrt(n)   #standard error             


# determining confidence interval 
EBM = t*se                                       ### PART C ### 
# Confidence.inteval = mean +- t_score*se 

LB <- mean - EBM 
UB <- mean + EBM 

# We are 90% confident that the mean score between all the students in the 
# chemistry classs is somewhere between 73.212 and 86.787