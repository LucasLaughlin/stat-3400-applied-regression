#   Autoregressive Models

data(airpass, package = "faraway")

plot(pass ~ year, airpass, ylab = "Log(Passengers)")
lmod = lm(log(pass) ~ year, airpass)
lines(exp(predict(lmod)) ~ year, airpass)

lagdf = embed(log(air$pass), 14)
colnames(lagdf) = c("y", paste0("lag", 1:13))

armod = lm(y ~ lag1 + lag12 + lag13, data.frame(lagdf))

#   The lag 1 variable models linear change over time so no Year Term is needed (redundant)

summary(armod)

# based on R^2 value of 0.99, we observe that all three lagged values are strongly significant witha a strong fit

#   PLot the ar model

plot(pass ~ year, airpass)
lines(airpass$year[14:144], exp(predict(armod)))


#   PREDICTION OF FUTURE VALUE