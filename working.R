A.	Use R code to read directly from a URL on the web. Store the dataset into a new dataframe, called dfComps. <br>
  The URL is:    <br>
  "https://intro-datascience.s3.us-east-2.amazonaws.com/companies1.csv" <br>
  **Hint:** use read_csv( ), not read.csv( ). This is from the **tidyverse package**. Check the help to compare them.

dfComps <- read_csv(file = "https://intro-datascience.s3.us-east-2.amazonaws.com/companies1.csv")
str(dfComps)
summary(dfComps)

urlComps <- dfComps[!is.na(dfComps$homepage_url),]

dfComps[is.na(dfComps$homepage_url),]
urlComps[is.na(urlComps$homepage_url),]

sum(is.na(dfComps$homepage_url))

str(urlComps)

sum(sapply(dfComps, is.numeric))
mean(dfComps$funding_rounds,na.rm = TRUE)

range(dfComps$founded_year)

min(urlComps$founded_year, na.rm=TRUE)


urlComps[is.na(urlComps$permalink),]

help(gsub)

urlComps$permalink <- str_replace(urlComps$permalink ,'/organization/','')
str(urlComps)


urlComps$funding_total_usd_num <- as.numeric(str_replace(urlComps$funding_total_usd, "\\s+", ""))
urlComps$funding_total_usd_num

urlComps$funding_total_usd_num <- as.numeric(urlComps$funding_total_usd)
urlComps$funding_total_usd_num



library(stringi)
urlComps$funding_new <- stri_replace_all_charclass(urlComps$funding_total_usd,"\\p{WHITE_SPACE}", "")
urlComps$funding_new

help(stri_replace_all_charclass)


head(urlComps)
myNews <- urlComps[urlComps$market == "News",]
myNews

help(unique)


samplF <- sample(urlComps$funding_rounds, 3, replace = FALSE)
samplT <- sample(urlComps$funding_rounds, 3, replace = TRUE)

sampluF <- unique(sample(urlComps$funding_rounds, 3, replace = FALSE))
sampluT <- unique(sample(urlComps$funding_rounds, 3, replace = TRUE))

urlComps[[1]]

install.packages("ggplot2")
library(ggplot2)

myCars <- c(myCars$disp,myCars$class)
ggplot(myCars$mpg, aes(x = myCars$class, y = myCars$disp)) +
  geom_boxplot() +
  labs(x = "Class of Car", y = "Displacement") +
  ggtitle("Displacement of Cars by Class")
str(myCars)



library(tidyverse)

#the data
myPlot <- ggplot(mpg)

#the asthetic
myPlot <- myPlot + aes(x=displ)

#the geometry
myPlot <- myPlot + 
  geom_histogram(bins = 12,fill = "cyan", col = "black")

#invoke the plot to draw
myPlot

#boxplot
myPlot.box <- ggplot(mpg) + aes(x=class,y=displ) + geom_boxplot()
myPlot.box

#scatter 
myPlot.scatter <- ggplot(mpg) + aes(x=displ,y=hwy) + geom_point()
myPlot.scatter

#using tydiverse pipes and adding color
mpg %>% ggplot() + aes(x=displ,y=hwy) + geom_point(aes(color = cty))

#adding more attributes
mpg %>% 
  mutate(cyl=as.factor(cyl)) %>%
  ggplot() + aes(x=displ,y=hwy) + 
  geom_point(aes(color = cty,
  shape = cyl, size = hwy)) + 
  scale_color_gradient(low = "blue", high = "orange")
         
mtc <- mtcars
car.names <- mtc[,0]  
car.names <- rownames(mtc)
car.names
