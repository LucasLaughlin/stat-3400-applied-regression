data1 <- read.csv(file.choose(new=FALSE), header=T )
head(data1)
names(data1)
attach(data1)

# STEP NUMBER 1 FIT LINEAR REGRESSION MODEL 
# USING AGE AND HEIGHT AS EXPLANATORY OR 
# INDEPENDENT (X) VARIABLES AND SAVE IT 
# IN AN OBJECT CALLED MODEL 1 

model1<-lm(LungCap~ Age + Height)
summary(model1)

# R^2 0.843: Approximately 84% of variation of lung capacity can be explained by 
# our model (Age and Height)

# We then have an F-statistics and P-value for an overall test of significant of
# our model. --This tests the null hypothesis that all of our model coefficients
# are zero 

# H0 : bETA_1 =beta_2=....beta_k=0 
# here H0: Beta_age=Beta_Height=0 

#Residual Standard Error: Gives an idea of how far observed lung capacity (Y values)
# are from predicted or fitted Lung Capacity (Y_hats)
# This gives us an idea of a typical sized residual or error  e = Y - Y(hat)

#The intercept -11.74 is the estimated mean Y value when all the X's are zero, in this 
# case this is the estimated mean lung capacity for someone of Age and Height of zero 
#(not very useful..we can center age and height)


#The slope for Age is 0.126. This is the effect of age on Lung Capacity adjusting or controlling
#the height. We associate an increase of 1 year in age with an increase of 0.126 in Lung Capacity 
#adjusting or controlling for height and also a Hypothesis test that the slope for Age = 0 

#The slope for height is 0.278432. This is the estimated effect of Height on Lung Capacity 
#adjusting for Age. and across from it is the probability that the slope for height is zero. 

#Let us now go ahead and calculate Pearson's correlation coefficient for age and height 

cor(Age, Height, method = 'pearson')

#here we see that age and height are very highly correlated 

#The collinearity between Age and Height means that we should not directly interpret the slope 
# (example, the age ) as the effect of Age on Lung Capacity adjusting for Height 

#This high correlation between Age and Height suggest that these two effects are somewhat bounded together
#---collinearity 

#Finally we can createa  confidence interval for the model coefficients 

confint(model1, conf.level=0.95)

#we have an estimated slope for age of 0.126. We are 95% confident that the true slope is between 
# 0.09 and 0.16

#Fitting a linear model using all of our x variables ---- have them do that 
# and summarize for model2 

# have them plot model 2 
--# the relationship between age hight and lung capacity is approx linear 
  
