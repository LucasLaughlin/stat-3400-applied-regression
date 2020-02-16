# GUI import window
data1 = read.csv(file.choose(new=FALSE), header = T)

head(data1)
names(data1)
attach(data1)

# Step 1: Linear Regression Model (LRM) using age + Height as Exploratory or indepenendent (x) variables
#         Save it in object model1

model1 = lm(LungCap~ Age +Height)
summary(model1)

# R-squared: 0.843
# 84% of variation in lung capacity can be explained by our model (Age & Height)
# p-value: 
# tests our null hypothesis that all our model coefficients are zero
# Null Hypothesis: Beta_age = Beta_height = 0
# Residual Standard Error

# The slope for the age is 0.126. This is the effect of age on lung capacity adjusting or
# controlling the height. We associate an uncrease of 1 year in age with an increase of 0.126
# in lung capcity adjusting or controlling for height. Further, a hypothesis test that the slope 
# for age =0

# The slope for the height is 0.278432. This is the estiate effect of height on lung capacity adjusting 
# for age. (The hypothesis is for height = 0)

cor(Age, Height, method='pearson')

# The colinearity between Age and Height means that we should not directly interpret the slope (example, age)
# as the effect of Lung capacity adjusting for Height

# Create CI for model coefficients
confint(model1, conf.level=0.95)

# We have an estimated slope for age to be 0.126. We are 95% confidente taht the true slope is between 0.09 and 0.16

## On your own, fit a linear model using all variables for x, summarize that model and plot the model, interpret the results