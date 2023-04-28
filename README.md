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
