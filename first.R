#WEEK 1
install.packages("swirl")
library(swirl)

#1 What version of R are you using (hint: make sure you download the latest version and then type version)? Please note that this question does not count toward your grade, but it is important to make sure that you are using the latest version of R.
version

#2 Create a numeric vector containing the numbers 2.23, 3.45, 1.87, 2.11, 7.33, 18.34, 19.23. What is the average of these numbers?
findavg <- c(2.23, 3.45, 1.87, 2.11, 7.33, 18.34, 19.23)
mean(findavg)

#3 Use a for loop to determine the value of ???i=125i2
sum <- 0
for (i in 1:25) {
  sum <- sum + i^2
  sum
}

#4 The cars dataset is available in base R. You can type cars to see it. Use the class function to determine what type of object is cars
cars
class(cars)

#5 How many rows does the cars object have?
nrow(cars)

#6 What is the name of the second column of cars?
colnames(cars)

#7 The simplest way to extract the columns of a matrix or data.frame is using [. For example you can access the second column with cars[,2]. What is the average distance traveled in this dataset?
mean(cars[,2])

#8 Familiarize yourself with the which function. What row of cars has a a distance of 85?
which(cars[,2] == 85)
