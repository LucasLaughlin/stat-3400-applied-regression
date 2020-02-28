#   UNIT 3
#   CONFIDENCE INTERVAL FOR PREDICTORS
data(gala, package = "faraway")

lmod = lm(Species ~ Area + Elevation + Nearest + Scruz + Adjacent, gala)
summary(lmod)

#   Construct 95% CI for B_Area in which we require 2.5% & 97.5% percentiles of t-dist with 30-6 = 24 degrees of freedom
qt(0.975,30-6)

# estimate * +- qt(0.975,30-6) * standard error
-0.023938 +c(-1,1) * 2.063899 * 0.022422

#   SUMMARY
#   p=value 29.6% > 5%, therefore any null hypothesis lying within this interval cannot be rejected

#   The confidence interval for B_adjacent is

-0.074805 + c(-1,1) * 2.063899 * 0.017700 

#   Because zero does not exist in this interval, the null is rejected. However, CI is pretty broad in that the upper limit is three times larger than the lower limit.

#   This means that we arent really confident about what the exact effect of the area of the adjacent island on the number of species really is, even though the statistical
#   significance indicates that we are confidet that it is negative.
