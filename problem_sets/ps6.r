##############################################################################
## Problem Set 6: Machine Learning 
## Author: Amelia Bertozzi-Villa
## Description: Most instructions require you to write code. When I ask a 
##              direct, question please write a brief response in a comment.
##
##              Comment your code according to the guidelines discussed in 
##              class.
##############################################################################

## Section 1: Loading Libraries and data ---------------------------------------------------------

## Load the "data.table", "ggplot2", "car", "kknn", and "stats" libraries. 

## Load the "Salaries" dataset and convert it to a data.table.

## Section 2: K-means ---------------------------------------------------------

## Perform K-means on the Salaries dataset, using yrs.service, yrs.since.phd,
## and salary as predictor variables. Use a K of 3. Plot the results with 
## yrs.since.phd on the x-axis and salary on the y axis.

## Repeat the process above, with a K of your choice. How do the two results differ?
## Does one do a better job than the other of separating the data into "groups"?


## Section 3: k-NN ---------------------------------------------------------

## Split the Salaries dataset into a training set with 85% of the data, and 
## a testing set with 15%.

## Perform k-NN on the Salaries dataset, using yrs.service, yrs.since.phd,
## and salary as predictor variables and rank as an outcome variable. 
## Use a k of 20. Plot the results with yrs.since.phd on the x-axis and salary on the y axis.

## Run k-NN above, with a k of your choice. How do the two results differ?
## Which one predicts better on this testing set? 


## Section 4: Logistic Regression ---------------------------------------------------------

## Create a new column in the Salaries dataset called is.prof, which is equal to 1
## if the faculty member is a full professor, and equal to 0 otherwise. 

## Run a logistic regression, with is.prof as the outcome variable and "yrs.since.phd"
## and "sex" as the predictor variables.

## By how much does an additional year since Ph.D affect the probability of someone being a full professor?

## How much more/less likely is a man to be a professor than a woman with the same number of years since Ph.D?

## Plot your results as we did in the R example, with different colors for sex in both your datapoints and 
## logistic curves. Remember, you can see the code from the example video in the "Code From Example Video" 
## folder on Canvas.



## EXTRA CREDIT (1 point) ---------------------------------------------------------

## Use an out of sample validation framework to test how the logistic regression above performs compared to 
## a logistic regresiion that only uses "yrs.since.phd" as a predictor variable. This involves:

## 1. Splitting the data (randomly) into a training and a testing set (I'd recommend making the testing set 15% of the data);
## 2. Running both logistic regressions on the training set;
## 3. Predicting values from each regression for the testing set and converting those values to binary variables;
## 4. Determining which regression predicts "better"-- because your outcome is binary, the error metric you should use is
##    "what percent of the time did my regression predict correctly?" 
## 5. Write a few words about which regression performed better, and why you think that might be the case. 

## NOTE: the "validation_example.r" script in the "Code From Example Videos" folder on Canvas has an example run-through of 
##       validation using *linear* regression that you can modify for logistic regression. You can find the associated video on the 
##       "What is Machine Learning?" page. 












