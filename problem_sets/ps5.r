##############################################################################
## Problem Set 5: Multivariate Regression 
## Author: Amelia Bertozzi-Villa
## Description: Most instructions require you to write code. When I ask a 
##              direct, question please write a brief response in a comment.
##
##              Comment your code according to the guidelines discussed in 
##              class.
##############################################################################

## Section 1: Loading Libraries ---------------------------------------------------------

## Load the "data.table", "ggplot2", and "reshape2" libraries. 


## Section 2: Exploring variables in the "tips" dataset ---------------------------------------------------------

## Load the "tips" dataset and convert it to a data.table.

## Let's say that we're interested in the relationship between total bill (predictor variable) and tip (outcome variable).
## For each of the other four variables in the dataset, indicate what class that variable falls into (confounder, effect modifier,
## mediator, or none of the above). Explain why you think that. Is this variable categorical or continuous?
## Should this variable be included in the regression?


## Section 3: Designing a regression ---------------------------------------------------------

## Write out what your regression equation should be, including all the variables you deemed necessary in Section 2.
## You can use "b" instead of "beta", for example: "total_bill = b0 + b1*tip + b2*sex". 
## You should have at least three predictor variables. 


## Section 4: Running that regression ---------------------------------------------------------

## Run the regression specified in Section 3. Print the output using summary().

## What category/categories is your Intercept value capturing? For example, in our "full regression" video from 
## lecture, our Intercept value captured both the category "sex=Female" and the category "discipline=A".

## For each row of the regression output, tell me:
## --If the coefficient in question refers to a continuous or categorical variable (and if categorical, what category)
## --How to interpret that value in a sentence. 
##    For continuous variables, this should be in the format of "an [x] increase in [predictor variable] 
##    leads to a [y] increase/decrease in my outcome variable. 
##    For categorical variables, tell me how the Intercept will change. 

## NOTE: You **do not** have to work through every possible combiations of categories and give me their intercept values--
## depending on which variables you choose, that could wind up being a lot of combinations. Just tell me how each categorical
## coefficient changes the intercept. 


## Section 5: Visualization ---------------------------------------------------------

## Make a plot of your regression outputs. If you included continuous variables, make one plot where the x-axis is 
## "total_bill" and another where it is your continuous variable. The results won't be straight lines, but that's ok.
## If you only have one categorical variable, distinguish its values by color. If you have multiple categorical variables,
## Use some combination of color and faceting to come up with the appropriate number of regression lines. 




