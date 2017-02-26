##############################################################################
## Module 10, Part 2: Logistic Regression Example
## Author: Amelia Bertozzi-Villa
## Description: Work through an example of logistic regression with both 
##              categorical and continuous variables. 
##############################################################################

## Loading libraries
library(data.table)
library(ggplot2)

## Load data
data("mtcars")
mtcars<- data.table(mtcars)

## rename "vs" variable
setnames(mtcars, "vs", "is.straight.engine")

## make new auto/manual variable
mtcars[, shift.type:= ifelse(am==1, "manual", "auto")]

## constrict dataset to only variables of interest
mtcars <- mtcars[, list(is.straight.engine, mpg, shift.type)]

## logistic regression: mpg
lr_mpg <- glm(is.straight.engine~mpg, data=mtcars, family=binomial)
summary(lr_mpg)

#plot results
mtcars[, pred.straight.mpg:= predict(lr_mpg, type="response")]
ggplot(mtcars, aes(x=mpg)) +
  geom_point(aes(y=is.straight.engine))+
  geom_line(aes(y=pred.straight.mpg), color="blue", size=1)


## logistic regression: mpg and type
lr_mpg_type <- glm(is.straight.engine~mpg + shift.type, data=mtcars, family=binomial)
summary(lr_mpg_type)


## plot results
mtcars[, pred.straight.mpg.type:= predict(lr_mpg_type, type="response")]
ggplot(mtcars, aes(x=mpg)) +
  geom_point(aes(y=is.straight.engine, color=shift.type))+
  geom_line(aes(y=pred.straight.mpg.type, color=shift.type), size=1)






