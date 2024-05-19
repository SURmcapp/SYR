data <- data.frame(
  weight = c(60, 70, 80, 90, 100),
  age = c(20, 25, 30, 35, 40)
)
 data$weight / data$age

dfage <- sum(data$age)
dfage
data$age > 2


ggplot(data, aes(x = age, y = weight)) +
       geom_point() +
       labs(title = "Scatterplot of Age vs Weight",
                       x = "Age",
                       y = "Weight")