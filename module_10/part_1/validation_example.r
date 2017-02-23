##############################################################################
## Out of sample validation
## Author: Amelia Bertozzi-Villa
## Description: Give an example of out-of-sample validation, using the 
##              Salaries dataset. The question: which regression is better at
##              predicting salary, a bivariate regression on yrs.since.phd
##              or a multivariate regression including yrs.service, sex,
##              and discipline?
##############################################################################

## load libraries
library(data.table)
library(ggplot2)
library(car)

## load data 
data(Salaries)
Salaries <- data.table(Salaries)

## Hold out a random 10% of the data
random_order <- sample(nrow(Salaries))
Salaries <- Salaries[random_order]

testing_set <- Salaries[1:40]
training_set <- Salaries[41:nrow(Salaries)]

## Run regression on training set: 
bivariate_regression <- lm(salary ~ yrs.since.phd, data=training_set)
multivariate_regression <- lm(salary ~ yrs.since.phd + yrs.service + sex + discipline, data=training_set)

## Predicting new values for TESTING set, using "newdata" argument
testing_set[, predict_bi:= predict(bivariate_regression, newdata=testing_set)]
testing_set[, predict_multi:=predict(multivariate_regression, newdata=testing_set)]

## Plot the predicted and observed values: bivariate predictions in blue, multivariate in red
ggplot(testing_set, aes(x=yrs.since.phd)) +
  geom_point(aes(y=salary)) +
  geom_point(aes(y=predict_bi), color="blue") +
  geom_point(aes(y=predict_multi), color="red") +
  labs(title="Out of Sample Validation Result for Two Regression Types", 
       x="Years Since Ph.D",
       y="Salary (USD)")

## Calculate Error Statistic
## RMSE: 
## 1. Calulate the "error" (the residual) for each point;
## 2. Square that value (the "squared error")
## 3. Take the mean of all squared errors across the dataset ("mean squared error")
## 4. The the square root of that mean value ("root mean squared error")

testing_set[, squared_error_bi:= (predict_bi - salary)^2]
testing_set[, squared_error_multi:=(predict_multi - salary)^2]

rmse_bi <- sqrt(sum(testing_set$squared_error_bi)/nrow(testing_set))
rmse_multi <- sqrt(sum(testing_set$squared_error_multi)/nrow(testing_set))
