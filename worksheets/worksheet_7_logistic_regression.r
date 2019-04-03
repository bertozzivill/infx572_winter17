##############################################################################
## Worksheet 7
##############################################################################

rm(list=ls())

## 1. libraries and data -----------------------------

## Load the data.table, ggplot2, and Stat2Data libraries. You may have to install the Stat2Data library first.


## Load the "Titanic" dataset; convert it to a data.table

# clean dataset: remove all rows where PClass equals "*" and where age is null
Titanic <- Titanic[PClass!="*" & !is.na(Age)]


## 2. preliminary plotting -----------------------------

## say we're interested in the impact of age, sex, and class on survival. 

## Make a scatter plot of age and survival, colored by class and faceted by sex.

## Can you draw any preliminary conclusions from these results?

## 3. regression -----------------------------

## Run and make plots of a logistic regression with age, sex, and class predicting survival.

## interpret the values of this regression.


