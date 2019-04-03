##############################################################################
## Worksheet 6
##############################################################################

rm(list=ls())

## 1. libraries and data -----------------------------

## Load the data.table, ggplot2, and MASS libraries. You may have to install the MASS library first.


## Load the "UScereal" dataset; convert it to a data.table


## 2. preliminary plotting -----------------------------

## say we're interested in the impact of fat on total calories in cereal.

## Make two scatter plots with "calories" on the y-axis: 
## one with "fat" on the x-axis and one with "sugars" on the x-axis. 
## color both by "mfr" (manufacturer). 


## do you think sugar is a confounder, effect modifier, or mediator in the relationship 
## between fat and calories? what about manufacturer?


## 3. regression -----------------------------

## run and make plots of the following three regressions:


## -- calories vs fat
## -- calories vs fat and sugars
## -- calories vs fat and manufacturer



## run a regression of calories on all the nutritional components of the dataset 
## (protein, fat, sodium, fibre, carbo, sugars, and potassium). Which factors 
## have the largest impact on how many calories there are in a  cereal?


## look at the sodium and potasium results specifically. Why do you think these results are so much smaller than the others?






