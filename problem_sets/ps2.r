##############################################################################
## Problem Set 2: Data Manipulation
## Author: Amelia Bertozzi-Villa
## Description: Most instructions require you to write code. When I ask a 
##              direct, question please write a brief response in a comment.
##
##              Comment your code according to the guidelines discussed in 
##              class.
##############################################################################

## Section 1: Loading Libraries ---------------------------------------------------------

## Load the "data.table" and "vcd" libraries. 
## You'll have to install the "vcd" package first if you haven't already, but *do not* include this in your script!

## ---------------------------------------------------------------------------------
## Section 2: Loading Data  ---------------------------------------------------------

## Load the "Suicide" dataset. Read through the documentation for this dataset with "?Suicide"



## ------------------------------------------------------------------------------------
## Section 3: data.table commands  ----------------------------------------------------

## Convert the "Suicide" dataset into a data.table. Remember to *assign* it to an object named "Suicide"!

## Delete the "method2" and "age.group" columns from your dataset. 

## Isolate all the rows where method is equal to "poison".

## Isolate all the rows where sex is equal to "male" and method is equal to "drown".

## Aggregate the dataset down to the total number (e.g. the "sum") of suicides, by method. (note: do NOT save this to a new dataset)

## Create a *new column* called "mean.freq", equal to the mean frequency of suicide, by method and sex.

## Delete the column "mean.freq".

## ------------------------------------------------------------------------------------
## Section 4: Merging  ---------------------------------------------------------

## Run the code below to generate a new dataset with the frequency of suicides in neighboring East Germany:
Suicide.east <- Suicide[, list(sex, age, method, Freq.east=as.double(sample(1:1500, nrow(Suicide), replace=T)))]

## Run the code below to rename the "Freq" column of "Suicide" to make it clear that you're talking about western Germany
setnames(Suicide, "Freq", "Freq.west")

## Merge "Suicide" and "Suicide.east" to a new object called "all.suicide". 
## The result should have the same number of rows as either "Suicide" or Suicide.east". 

## If you rerun the command above, but with the argument "all" set to true, do you get a different result? Why or why not?

## ------------------------------------------------------------------------------------
## Section 5: Reshaping -----------------------------------------------------

## Melt the "suicide.all" dataset so that the "Freq.west" and "Freq.east" columns are collapsed into a single column. 
## Save the result of this operation to a new dataset called "melted.suicide". 

## Cast the "melted.suicide" dataset so that there is a column for each sex, which contains the death count for that sex. 


## ------------------------------------------------------------------------------------
## Section 6: Contemplation -----------------------------------------------------
## You've just been working with a dataset of suicides. We've been treating them like they're just 
## any old numbers. Is this an appropriate method of working with this dataset? How do you, as a newfangled 
## data scientist, feel about needing to work with depressing or sensitive information?




