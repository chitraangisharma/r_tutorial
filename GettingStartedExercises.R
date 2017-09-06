#WEEK 1

install.packages("downloader")
library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleMiceWeights.csv"
filename <- "femaleMiceWeights.csv" 
download(url, destfile=filename)

#1 Read in the file femaleMiceWeights.csv and report the exact name of the column containing the weights.
df <- read.csv("femaleMiceWeights.csv")
df

#2 The [ and ] symbols can be used to extract specific rows and specific columns of the table. What is the entry in the 12th row and second column?
df[12,]

#3 You should have learned how to use the $ character to extract a column from a table and return it as a vector. Use $ to extract the weight column and report the weight of the mouse in the 11th row.
df$Bodyweight[11]

#4 The length function returns the number of elements in a vector. How many mice are included in our dataset?
v1 <- df[[1]]
v1
length(v1)

#5 To create a vector with the numbers 3 to 7, we can use seq(3,7) or, because they are consecutive, 3:7. View the data and determine what rows are associated with the high fat or hf diet. Then use the mean function to compute the average weight of these mice.
v2 <- df[13:24, 2]
v2
mean(v2)

#6 One of the functions we will be using often is sample. Read the help file for sample using ?sample. Now take a random sample of size 1 from the numbers 13 to 24 and report back the weight of the mouse represented by that row. Make sure to type set.seed(1) to ensure that everybody gets the same answer.
set.seed(1)
i <- sample( 13:24, 1)
df$Bodyweight[i]

