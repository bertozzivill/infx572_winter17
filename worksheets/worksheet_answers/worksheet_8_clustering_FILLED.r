##############################################################################
## Worksheet 7
##############################################################################

rm(list=ls())
set.seed(572)

## 1. libraries and data -----------------------------

## Load the data.table, ggplot2, kknn, stats, and datasets libraries. You may have to install the datasets library first.
library(data.table)
library(ggplot2)
library(datasets)
library(kknn)
library(stats)

## Load the "iris" dataset; convert it to a data.table
data(iris)
iris <- data.table(iris)

## 2. preliminary plotting -----------------------------

## plot Sepal.Length vs Sepal.Width, colored by species.
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) +
  geom_point(aes(color=Species))


## Can you draw any preliminary conclusions from these results?

## 3. K-means -----------------------------

## Perform K-means on the iris dataset, using sepal.length and sepal.width as predictors.
## Use a K of 3. Plot the results with 
## sepal.length on the x-axis and sepal.width on the y axis.
for_kmeans <- iris[, list(Sepal.Length, Sepal.Width)]
kmeans_output <- kmeans(for_kmeans, centers=3)
iris[, kmeans_cluster:= factor(kmeans_output$cluster)]

# plot the clustering result
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) +
  geom_point(aes(color=kmeans_cluster))

## how do these values compare, visually, to the plot with the actual species?

## Repeat the above analysis, with k=4. What do you find?
for_kmeans <- iris[, list(Sepal.Length, Sepal.Width)]
kmeans_output <- kmeans(for_kmeans, centers=4)
iris[, kmeans_cluster:= factor(kmeans_output$cluster)]

# plot the clustering result
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) +
  geom_point(aes(color=kmeans_cluster))


## 2. k-NN -----------------------------

## Split the iris dataset into a training set with 85% of the data, and 
## a testing set with 15%. Remember to randomize!

## Perform k-NN on the iris dataset, using sepal.length and sepal.width.
## Use a k of 20. Plot the results with Sepal.Length on the x-axis and Sepal.Width on the y axis.
count <- nrow(iris)
cutoff <- floor(count*0.15)
new_order <- sample(count)
iris <- iris[new_order]  # randomly shuffle data
testing_set <- iris[1:cutoff]
training_set <- iris[(cutoff+1):count]

knn_output <- kknn(Species ~ Sepal.Length + Sepal.Width , training_set, testing_set, k = 20)

testing_set[, predicted_species:= knn_output$fitted.values]
ggplot(testing_set, aes(x = Sepal.Length, y = Sepal.Width)) + 
  geom_point(aes(color = Species), size = 5, alpha = 0.3) + 
  geom_point(aes(color = predicted_species)) + 
  geom_point(data = training_set, aes(color = Species), alpha= 0.4, shape = 2) +
  scale_color_brewer(type="qual")

# What percentage of the testing set was identified correctly?
percent_correct <- (nrow(testing_set[Species==predicted_species])/nrow(testing_set))*100

# test different values of k. What do you find when k=2? when k=100?


