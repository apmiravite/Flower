library(tidyverse)
library(partykit)
library(rpart)
library(rpart.plot)


data<-data('iris')
summary(iris)
hist(iris$Sepal.Length,
     col='steelblue',
     main='Histogram',
     xlab='Length',
     ylab='Frequency')
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
        
# New codes start here
tree <- rpart(formula = Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width, data = iris)
plot(tree)
text(tree, pretty=1)
fancyRpartPlot(tree)

printcp(tree)

plotcp(tree)

sum(predict(tree,type='class')!=iris$Species)/nrow(iris)
