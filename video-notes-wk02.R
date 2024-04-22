#--- video-notes-wk02
#--- lecture

myFamilyNames <- c('Dad','Mom','Sis','Bro','Dog')
myFamilyNames

myFamilyAges <- c(43,42,12,8,5)
myFamilyAges

myFamilyGenders <- c('Male','Female','Female','Male','Female')
myFamilyGenders

myFamilyWeights <- c(188,136,83,61,44)
myFamilyWeights

myFamily <- data.frame(myFamilyNames,myFamilyAges,myFamilyGenders,myFamilyWeights)
myFamily

str(myFamily)

summary(myFamily)

#--- returns data from first row and first column
myFamily[1,1]

#--- returns the first row
myFamily[1,]

#--- returns the first column
myFamily[,1]

#--- Returns everything but the first row
myFamily[-1,]

#--- Returns everything but the first column
myFamily[,-1]

#--- lab RStudio

names <- c('Jeff','Jen','Joe')
gpa <- c(3.9,3.8,3.5)
df <- data.frame(names,gpa, stringsAsFactors = FALSE)

df
str(df)
summary(df)

#--- adding 'Pat' to grow the vector 'names' does not change 'df'
names <- c(names,'Pat')
names
df

#--- growing the dataframe with rbind will add a row to the dataframe
df <- rbind(df, c('Pat',3.3))
df

age <- c(30,25,38,22)
age

dfNew <- cbind(df,age)
dfNew

dfNew[1,]
dfNew[,2]

dfNew$age
dfNew$age + 2

#--- trying to create a new column in a different way
#--- this does not work because gpa's were stored as strings
#--- dfNew$agePerGpa <- dfNew$gpa/dfNew$age
#--- to recreate the gpa column as numeric

dfNew$gpa <- as.numeric(dfNew$gpa)
dfNew$gpa

dfNew$agePerGpa <- dfNew$gpa/dfNew$age
dfNew

dfNew$age[3]

#--- sorting dataframes

myCars <- mtcars
length(myCars)
head(myCars)
tail(myCars)
max(myCars$mpg)
highMPGcars <- myCars[myCars$mpg > 29,]
highMPGcars

index <- which.max(myCars$mpg)
index

myCars[20,]

myCars[index,]

myCars[which.max(myCars$mpg),]

#--- ascending by default
highMPGcarsOrdered <- myCars[order(myCars$mpg),]
highMPGcarsOrdered

#--- add minus sign for descending order
highMPGcarsOrdered <- myCars[order(-myCars$mpg),]
highMPGcarsOrdered

highMPGcarsOrdered[1:10,]

#--- Tidyverse and data frames
library(tidyverse)
select(mtcars,'mpg')

#--- What is returned by the following commands
names <- c('Jeff','Pat','Joe')
height <- c(100,103,120)
myFamily <- data.frame(names,height)

myFamily[1,1]
myFamily[1,]
select(myFamily,height)
myFamily %>% slice(c(1,3))

#--- more with tidyverse
names <- c('Jeff','Jen','Joe')
gpa <- c(3.9,3.8,3.5)
df <- data.frame(names,gpa, stringsAsFactors = FALSE)

str(df)
glimpse(df)

df <- rbind(df, c('Pat', 3.3))
df
