##############################################################################
## Worksheet 7
##############################################################################

rm(list=ls())
set.seed(572)

## 1. libraries and data -----------------------------

## Load the data.table, ggplot2, kknn, stats, and datasets libraries. You may have to install some libraries.

## Load the "iris" dataset; convert it to a data.table

## 2. preliminary plotting -----------------------------

## plot Sepal.Length vs Sepal.Width, colored by species.

## Can you draw any preliminary conclusions from these results?

## 3. K-means -----------------------------

## Perform K-means on the iris dataset, using sepal.length and sepal.width as predictors.
## Use a K of 3. Plot the results with 
## sepal.length on the x-axis and sepal.width on the y axis.

# plot the clustering result

## how do these values compare, visually, to the plot with the actual species?

## Repeat the above analysis, with k=4. What do you find?


## 2. k-NN -----------------------------

## Split the iris dataset into a training set with 85% of the data, and 
## a testing set with 15%. Remember to randomize!

## Perform k-NN on the iris dataset, using sepal.length and sepal.width.
## Use a k of 20. Plot the results with Sepal.Length on the x-axis and Sepal.Width on the y axis.

# What percentage of the testing set was identified correctly?

# test different values of k. What do you find when k=2? when k=100?


