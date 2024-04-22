myCars <- mtcars

dim(myCars) #--- returns the dimensions of the dataset i.e. 153 6
nrow(myCars) #--- returns the number of rows (observations) i.e. 153
ncol(myCars) #--- returns the number of columns (variables) i.e. 6
names(myCars) #--- returns all the names of variables

str(myCars)
summary(myCars)
shape(myCars)
mean(myCars$mpg)
median(myCars$mpg)
range(myCars$mpg)
nrow(myCars)
ncol(myCars)

df[row_index, column_index]
