#####################################################
# Original KickStarter Dataset
# Execute with R CMD BATCH or source('kickstarter.R')
#####################################################

# 9  - 313:381164
# 11 - 315:407752
# 12 - 316:426855
# 15 - 319:467603
# 17 - 321:486915
# 18 - 322:496418
# 20 - 324:512697
# 21 - 325:536372
# 23 - 327:552784
# 25 - 329:572694
# 26 - 330:588713
# 28 - 332:606224
# 30 - 334:626807

#See this for more info: http://msenux.redwoods.edu/math/R/dataframe.php
# Define two vectors, amounts and days and create a plot of this
amounts <- c(381164,407752,426855,467603,486915,496418,512697,536372,552784,572694,588713,606224,626807)
days <- c(313,315,316,319,321,322,324,325,327,329,330,332,334)
plot(days, amounts)

# Define a linear model for our amounts vs days (note the inversion) then plot line of best fit
model = lm(amounts ~ days)
abline(model)

# Create a data.frame from the vectors
projamounts=data.frame(days=days,amounts=amounts)

# Look into the workspace for R and see what we're working with
ls()

# Inspect a given variable
class(projamounts)

# Look at the amounts in our data.frame
projamounts$amounts

# Attach the amounts variable to OUR workspace as a global environment
attach(projamounts)

# Access these variables
projamounts

# so based on model
# Coefficients: Intercept - 393239, days - 10999                            
# y = mx + c
# So: amount = 10999 * days + 393239

# If we want to predict what the amout would be at 10 days we'd use
amount = 10999 * 10 + 392239
amount

# More efficient to use R's predict command to do this
predict(model,data.frame(days=356))
