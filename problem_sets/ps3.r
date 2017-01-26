##############################################################################
## Problem Set 3: ggplot2
## Author: Amelia Bertozzi-Villa
## Description: Most instructions require you to write code. When I ask a 
##              direct, question please write a brief response in a comment.
##
##              Comment your code according to the guidelines discussed in 
##              class.
##############################################################################

## Section 1: Loading Libraries ---------------------------------------------------------

## Load the "data.table", "ggplot2", and "Ecdat" libraries. Don't have "Ecdat" installed yet? You should know what to do.

## ---------------------------------------------------------------------------------
## Section 2: Loading Data  ---------------------------------------------------------

## Load the "Fair" dataset, and convert it to a data.table. 
## Read through the documentation for this dataset, and answer the questions below.

## What does one row of this dataset represent?

## What do the values in the "religious" column indicate?

## The documentation isn't very helpful about the "education" column-- what do you think its values represent?

## ---------------------------------------------------------------------------------
## Section 3: Plotting  ---------------------------------------------------------

## Subsection 1: Years Married vs. # of affairs ----------------------------------------------
## Make a scatter plot of years married on the x-axis and number of affairs on the y-axis, using geom_point.

## Hmm, that doesn't look very nice! That's because a lot of datapoints have the same values, so they're just stacked
## on top of each other. Try replacing "geom_point" with "geom_jitter" to wiggle the values around a little bit:

## That's better! Now, color that jittered scatterplot by sex.

## Additionally, facet it by whether or not the couple has children. 

## Give that plot some labels (x axis, y axis, and title) that accurately describe what the plot is showing. 


## Subsection 2: Number of affairs, by marriage satisfaction ---------------------------------------

## Even though the "rate" column refers to a category, right now R thinks it's numeric. 
## Convert it to a *categorical* (or *factor*) variable with the following code:
Fair[, rate:=as.factor(rate)]

## Now that we've done that, make a bar plot where the x-axis is the rate people give their marriage, and 
## the y-axis is how many times that rating appears in the dataset (hint: this is the default setup for bar plots!)
## Color this by rating. 

## Modify this bar plot so that the y-axis is the mean number of affairs, by rate. You'll have to make a new dataset
## for this and perform an aggregation. Label it (x, y,title)


## Subsection 3: Freestyle ---------------------------------------

## Make three additional plots using this dataset. At least one of them must include color,
## and at least one must include faceting. Make sure that each is fully labeled. 


