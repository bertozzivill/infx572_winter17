##############################################################################
## Worksheet 5: OLS 
##############################################################################
rm(list=ls())

## 0. libraries and data -----------------------------

## Load the data.table, ggplot2, and car libraries, load the dataset called "Wong", convert it to a data.table.
library(data.table)
library(ggplot2)
library(car)

data(Wong)
comas <- data.table(Wong)

## 1. Preliminary plots -----------------------------
# Make scatter plots of the following: age vs piq, age vs duration, 
# viq vs piq. 
# When I say "a vs b", I mean that "a" should be on the x axis. These plots do not need
# to be fully labeled. 


## Which of the above relationships is the best candidate for bivariate
## regression? Why? 

## 2. Regression -----------------------------

## For the relationship you picked in part 1, run a bivariate regression. 
## The *outcome* variable should be the variable on the *y* axis of your plots 
biv_reg <- lm(piq~viq, data=comas)

## Run the 'summary' command on the regression output. Identify the coefficients 
## and their meanings. 
summary(biv_reg)

## Make a new column in your dataset with predicted [outcome variable] values.
comas[, predicted_piq := predict(biv_reg)]

## Take the scatter plot you made in part 1, and add a line plot showing the regression predictions.
## Fully label this plot. 
ggplot(comas, aes(x=viq)) +
  geom_point(aes(y=piq)) +
  geom_line(aes(y=predicted_piq), color="blue", size=2) +
  labs(title="Observed and predicted piq based on viq",
       x="Verbal IQ (viq)",
       y="Mathematical IQ (piq)")



