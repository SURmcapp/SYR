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
