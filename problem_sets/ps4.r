##############################################################################
## Problem Set 4: OLS 
## Author: Amelia Bertozzi-Villa
## Description: Most instructions require you to write code. When I ask a 
##              direct, question please write a brief response in a comment.
##
##              Comment your code according to the guidelines discussed in 
##              class.
##############################################################################

## Section 1: Loading Libraries ---------------------------------------------------------

## Load the "data.table", "ggplot2", "car", and "reshape2" libraries. 



## ---------------------------------------------------------------------------------
## Section 2: Regressing Years of Service on Salary  ---------------------------------------------------------

## Load the "Salaries" dataset, and convert it to a data.table. 

## Run a regression where the outcome variable is "salary" and the predictor variable is "yrs.service". 

## Run the "summary" command on your regression, and answer the following questions:

## 1. What are the coefficients for intercept and "yrs.service"?
## 2. Put those intercepts into a sentence describing the linear relationship, like we did for the two regressions in lecture.
## 3. What is the standard error and p-value of the "yrs.service" coefficient? Is that p-value statistically significant?
## 4. What is the adjusted R-squared value for this regression? What does that mean?

## Make a new column in your dataset with predicted salary values.

## Make a scatter plot of yrs.service vs. salary, and add a line plot showing the regression predictions. Label it. 


## ---------------------------------------------------------------------------------
## Section 3: Regressing with the "tips" Dataset  ---------------------------------------------------------

## Load the "tips" dataset from the "reshape2" library, and convert it to a data.table. 

## What does one row of this dataset represent?

## Run a regression where the outcome variable is "tip" and the predictor variable is "total_bill". 

## Run the "summary" command on your regression, and answer the following questions:

## 1. What are the coefficients for intercept and "total_bill"?
## 2. Put those intercepts into a sentence describing the linear relationship, like we did for the two regressions in lecture.
## 3. What is the standard error and p-value of the "total_bill" coefficient? Is that p-value statistically significant?
## 4. What is the adjusted R-squared value for this regression? What does that mean?
## 5. What are the units of the coefficients in the "Estimate" column?

## Make a new column in your dataset with predicted tip values.

## Make a scatter plot of total_bill vs. tips, and add a line plot showing the regression predictions. Label it. 

## Think about the expected relationship between "total_bill" and "tip", according to cultural norms in the US.
## How does the coefficient on "total_bill" relate to those cultural norms?

