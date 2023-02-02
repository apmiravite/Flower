library(tidyverse) 
data <- data('iris') #loads data
summary(iris)

# Let's see a visual overview of the dimensions of the flowers, for each species of iris
boxplot(Sepal.Length~Species,
        data=iris,
        main='Sepal Length by Species',
        xlab='Species',
        ylab='Sepal Length',
        col='steelblue',
        border='black')
boxplot(Sepal.Width~Species,
        data=iris,
        main='Sepal Width by Species',
        xlab='Species',
        ylab='Sepal width',
        col='steelblue',
        border='black')

boxplot(Petal.Width~Species,
        data=iris,
        main='Petal Width by Species',
        xlab='Species',
        ylab='Petal width',
        col='steelblue',
        border='black')

boxplot(Petal.Length~Species,
        data=iris,
        main='Petal length by Species',
        xlab='Species',
        ylab='Petal length',
        col='steelblue',
        border='black')
