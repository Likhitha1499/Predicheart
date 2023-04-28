click on Project located on the top right corner in the R studio > New project > New directory > R package > name the package (I gave the name as Predicheart to my package. You can give a name based on your choice) > click on create project.

# Predicheart
#' @import ggplot2
#' @import rio
#' @import graphics
#' @import utils

Pred <- function(x) {
  # 1 row and 2 columns
  par(mfrow=c(1,2))

  # Histogram
  hist_data <- hist(heart$age, main="Age", col=c("red"))

  # Box plot
  boxplot(heart$chol, main="Chol level", names=c("chol"), pch=19, col=c("red"))

  # Mean
  mean(heart$chol)

  # ggplot
  ggplot <- ggplot2::ggplot(heart, aes(x=chol, y=trestbps)) + geom_point(aes(col=target))
  plot(ggplot)

  rm(list=ls())

  # Import data using rio
  rio::import("heart.csv") -> heart
  colnames(heart) <- tolower(make.names(colnames(heart)))

  # Mean
  mean(heart$chol)
}


From the histogram , we can predict that the risk of heart diseases with age from 30 - 60 and then started decreasing. From the boxplot we can examine that for more people the chol level ranges in between 200 - 300. but there are some variation with 3-4 people. I think there might be some reasons for that. And in the ggplot, I compared chol and tresbps values by target. we determined  By using the function Pred () we can create boxplot, ggplot, histogram and mean for the data. Creating a predictive model for heart disease can be a valuable tool in predicting the heart disease. By following the following steps , you can create your own package in the R studio and make it available to others.


You can check it out the package creation in detail in my blog- https://likki1499.blogspot.com/2023/04/prediction-of-heart-disease.html
