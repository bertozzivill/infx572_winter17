
##############################################################################
## Worksheet 4: ggplot
##############################################################################


## 1. libraries and data -----------------------------

## Load the data.table, ggplot2 and car libraries. 
library(data.table)
library(ggplot2)
library(car)

## load the dataset called "Wong" from the car library, and convert it to a data.table called "comas".
data(Wong)
comas <- data.table(Wong)

## 2. Plots -----------------------------

## Make a scatter plot of age vs coma duration, colored by sex.

ggplot(comas, aes(x=age, y=duration, color=sex)) +
  geom_point()


## Make a scatter plot of coma duration vs piq, colored by age.
ggplot(comas, aes(x=duration, y=piq, color=age)) +
  geom_point()


## Make a scatter plot of coma duration vs viq, faceted by sex and colored by piq.
## Label it appropriately. 
ggplot(comas, aes(x=duration, y=viq, color=piq)) +
  geom_point() +
  facet_grid(sex~.)


# ---

## Make a histogram (bar chart with counts) by sex.

ggplot(comas, aes(x=sex, fill=sex)) +
  geom_bar()

## Change this histogram so the y-axis is mean piq. 

mean_piq <- comas[, list(mean=mean(piq)), by=sex]

ggplot(mean_piq, aes(x=sex, y=mean, fill=sex)) +
  geom_bar(stat="identity")

# a toy example of a bar graph with a user-set y-axis
toy_dataset <- data.table(id=1:7,
                          age=c(13, 17, 13, 14, 12, 19, 15),
                          height=c(60, 65, 57, 63, 55, 59, 68)
                          )

ggplot(toy_dataset, aes(x=age, y=height)) +
  geom_bar(stat="identity")

## Make a new dataset containing only individuals with more than three observations. 
##  Make a line plot of this dataset showing "days" vs piq, colored by id. Superimpose
##  The data points (aka a scatter plot) over this line plot. 
comas[, count:=.N, by=list(id)]

more_than_three <- comas[count>3]
more_than_three[, id:=as.factor(id)]

ggplot(more_than_three, aes(x=days, y=piq, color=id)) +
  geom_line() +
  geom_point()


# making factors

numeric_vec <- c(1, 1, 2, 3)
factor_vec <- as.factor(numeric_vec)






