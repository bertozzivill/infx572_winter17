##############################################################################################
## Full Multivariate Regression Example
## Author: Amelia Bertozzi-Villa
## Description: Walk through the design and interpretation of 
##              the full salary-yrs.since.phd regression in the "Salaries" Dataset
#############################################################################################

## Load Libraries
library(data.table)
library(car)
library(ggplot2)

## Load Salaries data
data(Salaries)
Salaries <- data.table(Salaries)

## Regression equation: regress salary on yrs.since.phd, yrs.service, sex, and discipline
full_regression <- lm(salary ~ yrs.since.phd + yrs.service + sex + discipline, data=Salaries)

## Look at regression output
summary(full_regression)

## Predict intercepts for different groups
new_predictions <- data.table(yrs.since.phd=rep(0,4),
                      yrs.service=rep(0,4),
                      sex = c("Female", "Female", "Male", "Male"),
                      discipline = c("A", "B", "A", "B"))

new_predictions[, predicted_salary:= predict(full_regression, newdata=new_predictions)]



