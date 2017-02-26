##############################################################################
## Problem Set 5: Machine Learning 
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
## and salary as predictor variables. Use a k of 20. Plot the results with
## yrs.since.phd on the x-axis and salary on the y axis.

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





