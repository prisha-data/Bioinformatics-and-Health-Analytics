## Loading the iris dataset 

library(datasets)
data("iris")
my_iris<-as.data.frame(iris)

## name of the columns

names(my_iris)

## changing the names of the columns

names(my_iris)=c("seplen","sepwid","petlen","petwid","species")
names(my_iris)  ## changed names of the columns

## Initial explorations

class(my_iris)

dim(my_iris) ## dimensions of the rows and the columns of the dataset

## extraction of specific data

my_iris[1,2]
my_iris[1,]
my_iris[,1]
my_iris$seplen ## calling specific row or column

my_iris[,c("seplen","sepwid")]

## calculating the max, min, mean and median

summary(my_iris)

## mean of sepal length

mean(my_iris$seplen)

## median of petal width

median(my_iris$petwid)

## subset the data from specific setosa species

setosa_data<-subset(my_iris,species=="setosa")

## Maximum sepal width from the setosa species

max_setosa_width<-max(setosa_data$sepwid)

# visualizations
## histogram

hist(my_iris$petlen, main = "distribution of iris petal length",col = "lightblue",xlab = "petal length")

## Boxplot

boxplot(sepwid ~ species,data = my_iris,main = "sepal width by species",xlab = "species",ylab = "sepal width",col=c("red","green","blue")) 

## Advanced visualization by ggplot

# 1. Create the scatter plot using your custom column names
plot(my_iris$seplen, my_iris$sepwid, 
     col = my_iris$species,      # Colors points based on species
     pch = 19,                   # Makes the points solid circles
     main = "Sepal Length vs Sepal Width",
     xlab = "Sepal Length",
     ylab = "Sepal Width")

# 2. Add a legend to explain the colors
legend("topright", legend = levels(my_iris$species), col = 1:3, pch = 19)







