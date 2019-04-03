##############################################################################
## Worksheet 7
##############################################################################

rm(list=ls())

## 1. libraries and data -----------------------------

## Load the data.table, ggplot2, and Stat2Data libraries. You may have to install the Stat2Data library first.
library(data.table)
library(ggplot2)
library(Stat2Data)

## Load the "Titanic" dataset; convert it to a data.table
data(Titanic)
Titanic <- data.table(Titanic)

# clean dataset: remove all rows where PClass equals "*" and where age is null
Titanic <- Titanic[PClass!="*" & !is.na(Age)]


## 2. preliminary plotting -----------------------------

## say we're interested in the impact of age, sex, and class on survival. 

## Make a scatter plot of age and survival, colored by class and faceted by sex.
ggplot(Titanic, aes(x=Age, y=Survived)) +
        geom_jitter(aes(color=PClass), size=2, alpha=0.7, width=0, height=0.02) +
        facet_grid(~Sex)


## Can you draw any preliminary conclusions from these results?

## 3. regression -----------------------------

## Run and make plots of a logistic regression with age, sex, and class predicting survival.

lr <- glm(Survived ~ Age + Sex + PClass, data=Titanic, family=binomial)

Titanic[, prediction:= predict(lr, type="response")]
ggplot(Titanic, aes(x=Age, color=PClass)) +
  geom_point(aes(y=Survived), size=2)+
  geom_line(aes(y=prediction), size=1) +
  facet_grid(~Sex)

## interpret the values of this regression.


## Re-predict, and re-plot, with a longer range of ages
new_data <- data.table(expand.grid(Sex=c("female", "male"),
                                  PClass=c("1st", "2nd", "3rd"),
                                  Age=-100:150))

new_data[, prediction:= predict(lr, newdata=new_data, type="response")]

ggplot(new_data, aes(x=Age, color=PClass)) +
      geom_point(data=Titanic, aes(y=Survived), size=2)+
      geom_line(aes(y=prediction), size=1) +
      facet_grid(Sex~.)


