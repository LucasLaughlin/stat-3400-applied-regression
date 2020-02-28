data(gala, package = "faraway")
lmod = lm(Species ~ Area + Elevation + Nearest + Scruz + Adjacent, gala)

#  FIT A HYPOTHESIS TEST

nullmod = lm(Species ~ 1, gala)  # fitting null model
anova(nullmod, lmod)
#   Small p so reject null -> at least one predictor influences species

#   Lets remove a variable, in this case area
#   Full linear model w/o area becomes null for ANOVA
lmod_noArea = lm(Species ~ Elevation + Nearest + Scruz + Adjacent, gala)
anova(lmod_noArea, lmod)

summary(lmod) # Only good at testing ONE PREDICTOR to exclude, why?

#   What you shoudl not do
summary(lm(Species ~ Area, gala))
#   Falsley reject your null ----> FALSE CONCLUSION
#   For null hypothesis, alwasy include the full model, excluding the predictor you are looking to analyze

########### PARTIAL F-TEST ###########
# IS ARE AN ADJACENT NEEDED IN THE MODEL?

lmods = lm(Species ~ Elevation + Nearest + Scruz, gala)
anova(lmods, lmod)
summary(lmod)

#   WHEN TAKING 2 PREDICTORS OUT OF MODEL --> always do anova, not summary