install.packages("swirl")
library(swirl)

cars
class(cars)

nrow(cars)
colnames(cars)
cars[,2]

mean(cars[,2])

which(cars[,2] == 85)

tot = 0
for (i in 1:25){
  tot <- tot + i^2
}


install.packages("downloader")
library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleMiceWeights.csv"
filename <- "femaleMiceWeights.csv" 
download(url, destfile=filename)

df <- read.csv("femaleMiceWeights.csv")

df

df[12,]

v1 <- df[[1]]

v1

length(v1)

df$Bodyweight[11]

v2 <- df[13:24, 2]
v2
mean(v2)


set.seed(1)
i <- sample( 13:24, 1)
df$Bodyweight[i]



