##############################################################################
## Worksheet 3
##############################################################################


## 1. libraries and data -----------------------------

## Load the data.table and car libraries. 

## load the dataset called "Wong" from the car library.

## Create a data.table called "comas" from the "Wong" data.frame.

## What does one row of this dataset represent? What is your guess for what each column means? 
## How would you learn more about this dataset?

## print the descriptive statistics of this dataset to the screen. 


## 2. data.table: i -----------------------------

## Isolate the 3rd row of the dataset. 

## Isolate the 12th-19th rows of the dataset.

## Isolate all rows in which sex is equal to "Female".

## Isolate all rows in which piq is under 75.

## Isolate all rows in which id is 1939. 


## 2. data.table: j -----------------------------

## Isolate the column "piq".

## Isolate the columns "id" and "viq".

## Isolate rows 40-50 AND columns "days" and "duration".

## *Create a new column called age_at_eval equal to the participant's age at the time of each iq test.


## 3. data.table: by -----------------------------

## Print to the screen the dataset aggregated down to the average coma duration, by sex. 

## Create a new column called "min_piq" equal to the minimum value of each individual's IQ tests. 

## *Create a new column called "count" that finds how many observations each patient has in the dataset. 


## 4. reshaping -----------------------------

## Make a new dataset called "comas_melted", in which you melt the comas dataset such that "piq" and "viq" values are collapsed into a single column.
## Give your new value and variable columns meaningful names. 

## Cast "comas_melted" so you recover the original dataset. 


## 5. merging -----------------------------

## Run the following code to make a new dataset of the sources of coma:
cause_list <- c("Sports", "Workplace", "Violence", "Medical", "Other")
ids <- unique(comas$id)

causes <- data.table(id=ids,
                     cause = sample(cause_list, length(ids), replace=T)
                     )


## Merge "causes" with "comas". 


## Run the following code to make a new dataset of the sources of coma *for only some patients*:
causes_new <- data.table(id=ids[1:10],
                     cause = sample(cause_list, 10, replace=T)
)


## Merge "causes_new" with "comas", keeping only the patients included in "causes_new".

## Merge "causes_new" with "comas", keeping all patient files. 












