
##############################################################################
## Worksheet 4: ggplot
##############################################################################


## 1. libraries and data -----------------------------

## Load the data.table and car libraries. 
library(data.table)
library(car)
library(ggplot2)

## load the dataset called "Wong" from the car library, and convert it to a data.table called "comas".
comas <- data.table(Wong)

## 2. Plots -----------------------------

## Make a scatter plot of age vs coma duration, colored by sex.
ggplot(comas, aes(x=age, y=duration)) + 
  geom_point(aes(color=sex))

## Make a scatter plot of coma duration vs piq, colored by age.
ggplot(comas, aes(x=duration, y=piq)) + 
  geom_point(aes(color=age))

## Make a scatter plot of coma duration vs viq, faceted by sex and colored by piq.
## Label it appropriately. 
ggplot(comas, aes(x=duration, y=viq)) + 
  geom_point(aes(color=piq)) + 
  facet_grid(sex ~ .) +
  labs(title="Coma duration vs viq, by sex and piq",
       x="Coma duration (days)",
       y="Verbal IQ Score")

# ---

## Make a histogram (bar chart with counts) of the datset, by sex.
ggplot(comas, aes(x=sex)) +
  geom_bar(aes(fill=sex))
  
## Change this histogram so the y-axis is mean piq. 
ggplot(comas[, list(mean_piq=mean(piq)), by=list(sex)], aes(x=sex, y=mean_piq)) +
  geom_bar(aes(fill=sex),stat="identity")


## Make a new dataset containing only individuals with more than three observations. 
##  Make a line plot of this dataset showing "days" vs piq, colored by id. Superimpose
##  The data points (aka a scatter plot) over this line plot. 
comas[, count:= .N, by=list(id)]
ggplot(comas[count>3], aes(x=days, y=piq, group=id)) +
  geom_line(aes(color=factor(id))) +
  geom_point(aes(color=factor(id)))
  
  





