# Loading the mtcars dataset
data(mtcars)

# Loading ggplot2 & dplyr package
library(ggplot2)
library(dplyr)

# Summary of data
str(mtcars)

head(mtcars)

# 1. Plotting a scatter plot of hp(horsepower) against mpg(miles per gallon)
ggplot(data = mtcars) + geom_point(mapping = aes(x=hp, y=mpg))
ggplot(data = mtcars, aes(x=hp, y=mpg))+ geom_point() + geom_smooth(method="loess")

# 2. Plotting a scatter plot of wt(weight) against mpg(miles per gallon) effect of weight on fuel efficiency
ggplot(data = mtcars) + geom_point(mapping = aes(x=wt, y=mpg))

# 3.Is manual more efficient than automatic? comparing avg mpg for manual & automatic
avg_mpg <- mtcars %>% group_by(am) %>% 
  summarise(mpg = mean(mpg))
avg_mpg

# Is manual more efficient than automatic? looking at it from a graph
ggplot(data = mtcars) + geom_point(mapping = aes(x=wt, y=mpg, colour = as.factor(am)))
ggplot(data = mtcars) + geom_point(mapping = aes(x=hp, y=mpg, colour = as.factor(am)))