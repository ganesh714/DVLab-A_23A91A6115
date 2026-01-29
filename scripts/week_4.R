# Load the Data
data(iris)

# Understand the data
str(iris)
View(iris)
class(iris)
?iris

# Basic Box plot
boxplot(iris$Sepal.Length)

# Add Title & Labels
boxplot(iris$Sepal.Length,
        main="Box Plot for Sepal Length",
        ylab="Sepal_length",
        col ='skyblue')

boxplot(Sepal.Length ~ Species,
        data=iris,
        main="Sepal Length by Species",
        xlab="Species",
        ylab="Sepal Length",
        col=c('pink','green','blue'))
# Multi-Variable Box Plot
boxplot(iris[,1:4],
        main="Multi Variable Box Plot",
        col=c('pink','green','blue','purple'))