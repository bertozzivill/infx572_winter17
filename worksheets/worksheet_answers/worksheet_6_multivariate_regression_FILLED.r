##############################################################################
## Worksheet 6
##############################################################################

rm(list=ls())

## 1. libraries and data -----------------------------

## Load the data.table, ggplot2, and MASS libraries. You may have to install the MASS library first.
library(data.table)
library(ggplot2)
library(MASS)

## Load the "UScereal" dataset; convert it to a data.table

cereal <- data.table(UScereal)

## here's a nice way to view all the ingredients vs calories at once
to_plot <- melt(cereal, id.vars=c("mfr", "calories", "shelf", "vitamins"))

ggplot(to_plot, aes(x=value, y=calories)) +
  geom_point(aes(color=mfr)) +
  facet_wrap(~variable, scales="free_x") +
  labs(title="Ingredients vs Calories for Breakfast Cereals",
       x="Grams/Milligrams of Ingredient",
       y="Calories")


## 2. preliminary plotting -----------------------------

## say we're interested in the impact of fat on total calories in cereal.

## Make two scatter plots with "calories" on the y-axis: 
## one with "fat" on the x-axis and one with "sugars" on the x-axis. 
## color both by "mfr" (manufacturer). 
ggplot(cereal, aes(x=fat, y=calories)) +
  geom_point(aes(color=mfr)) +
  labs(title="Fat vs Calories for Breakfast Cereals",
       x="Grams of Fat",
       y="Calories")

ggplot(cereal, aes(x=sugars, y=calories)) +
  geom_point(aes(color=mfr)) +
  labs(title="Sugar vs Calories for Breakfast Cereals",
       x="Grams of Sugars",
       y="Calories")


## do you think sugar is a confounder, effect modifier, or mediator in the relationship 
## between fat and calories? what about manufacturer?


## 3. regression -----------------------------

## run and make plots of the following three regressions:


## -- calories vs fat
## -- calories vs fat and sugars
## -- calories vs fat and manufacturer

# regression
lm_bi <- lm(calories ~ fat, data=cereal)
lm_cont <- lm(calories ~ fat + sugars, data=cereal)
lm_cat <- lm(calories ~ fat + mfr, data=cereal)

# prediction
cereal[, pred_bi:= predict(lm_bi)]
cereal[, pred_cont:=predict(lm_cont)]
cereal[, pred_cat:= predict(lm_cat)]

## bivariate plot 
ggplot(cereal, aes(x=fat)) +
  geom_point(aes(y=calories)) +
  geom_line(aes(y=pred_bi)) +
  labs(title="Bivariate Regression: Calories vs. Fat",
       x="Fat (g)",
       y="Calories")

## multivariate
ggplot(cereal, aes(x=fat)) +
  geom_point(aes(y=calories)) +
  geom_line(aes(y=pred_cont))+
  labs(title="Multivariate Regression: Calories vs. Fat & Sugar",
       x="Fat (g)",
       y="Calories")

## categorical
ggplot(cereal, aes(x=fat, color=mfr)) +
  geom_point(aes(y=calories)) +
  geom_line(aes(y=pred_cat))+
  labs(title="Multivariate Regression: Calories vs. \n Fat & Manufacturer",
       x="Fat (g)",
       y="Calories")

## better multivariate
for_multi_plot <- cereal[, list(calories, fat, sugars)]
for_multi_plot <- melt(for_multi_plot, id.vars=c("calories"))
for_multi_plot[, prediction:= lm_cont$coefficients["(Intercept)"] + lm_cont$coefficients[variable]*value]

ggplot(for_multi_plot, aes(x=value)) +
  geom_point(aes(y=calories)) +
  geom_line(aes(y=prediction)) +
  facet_grid(variable~.) +
  labs(title="Multivariate Regression: Calories vs. Fat & Sugar",
       x="Ingredient (g)",
       y="Calories")


## run a regression of calories on all the nutritional components of the dataset 
## (protein, fat, sodium, fibre, carbo, sugars, and potassium). Which factors 
## have the largest impact on how many calories there are in a  cereal?

lm_all <- lm(calories ~ fat + sugars + protein + carbo + fibre + potassium + sodium, data=cereal)

## look at the sodium and potasium results specifically. Why do you think these results are so much smaller than the others?






