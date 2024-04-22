#--- Using Descriptive Stats
#--- rnorm function (number of elements, mean, std deviation)
a <- rnorm(100,50,2)
str(a)
hist(a)
hist(rnorm(100,50,2))

c <- rnorm(100000,75,2)
d <- c[c>80]
str(d)
summary(d)
glimpse(d)

#--- introducing sampling
jar <- c(0,1)
numSamples <- 4
sample(jar,numSamples, replace=TRUE)
#--- the following generates an error
#--- sample(jar,numSamples, replace=FALSE)

sample(jar,2, replace=FALSE)

sample(jar,numSamples, replace=TRUE)
sum(sample(jar,numSamples, replace=TRUE))
mean(sample(jar,numSamples, replace=TRUE))

replicate(5,sample(jar,numSamples,replace=TRUE), simplify = TRUE). 
#--- simplify = TRUE put output in a data frame
#--- simplify = FALSE gives you a series of vectors

replicate(2,mean(sample(jar,numSamples,replace=TRUE)), simplify = TRUE)
replicate(10,mean(sample(jar,numSamples,replace=TRUE)), simplify = TRUE)
sampleMeans <- replicate(200,mean(sample(jar,numSamples,replace=TRUE)), simplify = TRUE)
sampleMeans
mean(sampleMeans)
sd(sampleMeans)
quantile(sampleMeans, c(0.025, 0.975))
hist(sampleMeans)

myJar <- c(-1,0,1)
myNumSamples <- 250
mySample <- sample(myJar,myNumSamples,replace=TRUE)
mean(mySample)

#--- More on Sampling
samples <- rnorm(10000, 50, 2)
mean(samples)
sd(samples)
hist(samples)

testData <- runif(25)
testData
hist(testData)

#--- to see how dta is skewed
#--- install.packages("moments")
library(moments)
skewness(testData)
skewness(samples)
help("skewness")

#--- sampling of "dfStates"

#--- Mystery Samples

