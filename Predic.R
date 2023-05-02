# Document the function
#' Predicts the presence of heart disease based on a set of input variables
#'
#' @param age Age of the patient
#' @param sex Sex of the patient (0 = female, 1 = male)
#' @param cp Chest pain type (1 = typical angina, 2 = atypical angina, 3 = non-anginal pain, 4 = asymptomatic)
#' @param trestbps Resting blood pressure (in mm Hg)
#' @param chol Serum cholesterol (in mg/dl)
#' @param fbs Fasting blood sugar (> 120 mg/dl) (1 = true, 0 = false)
#' @param restecg Resting electrocardiographic results (0 = normal, 1 = ST-T wave abnormality, 2 = left ventricular hypertrophy)
#' @param thalach Maximum heart rate achieved
#' @param exang Exercise induced angina (1 = yes, 0 = no)
#' @param oldpeak ST depression induced by exercise relative to rest
#' @param slope The slope of the peak exercise ST segment (1 = up sloping, 2 = flat, 3 = down sloping)
#' @param ca Number of major vessels (0-3) colored by fluoroscopy
#' @param thal Thalassemia (3 = normal, 6 = fixed defect, 7 = reversible defect)
#'
#' @return A prediction of whether the patient has heart
#'
#'
#Create a function to predict the heart disease
Pred <- function(age, sex, cp, trestbps, chol, fbs, restecg, thalach, exang, oldpeak, slope, ca, thal, target) {

  #Reprocess the data
  data <- read.csv("C:/Users/LENOVO/Downloads/heart.csv")
  data$target <- as.factor(data$target - 1)


  #Visualize the data
  #Box plot
  boxplot(heart$chol, main = "Chol level", names = c("chol"), pch=19, col = c("red"))

  #Histogram
  hist_data <- hist(heart$age, main = "Age", col = c("red"))

  #ggplot
  ggplot <- ggplot2::ggplot(heart, aes(x=chol, y=trestbps)) + geom_point(aes(col=target))
  plot(ggplot)

  #Find the Mean
  mean(heart$chol)


  #Split the data into training  and testing sets
  set.seed(123)
  class(train)
  train <- as.data.frame(train)


  trainIndex <-createDataPartition(data$target, p = 0.7, list = FALSE, times = 1)
  trainIndex <- createDataPartition(data$target, p = .7, list = FALSE, times = 1)
  train <- data %>%
    select(target, age, sex, cp, trestbps, chol, fbs, restecg, thalach, exang, oldpeak, slope, ca, thal) %>%
    slice(trainIndex)


  #Train the random forest model
  model <- randomForest(target ~ ., data = train, ntree = 100)

  #Print model information
  print(model)

  #Define variables
  age <- 45
  sex <- 1
  cp <- 2
  trestbps <- 130
  chol <- 246
  fbs <- 0
  restecg <- 160
  exang <- 0
  oldpeak <- 1.5
  slope <- 1
  ca <- 0
  thal <-2

  #Define a new observation
  new_observation <- data.frame(age = 40, sex = 1, cp = 2, trestbps = 140, chol = 200, fbs = 0, restecg = 0, thalach = 150, exang = 0, oldpeak = 0, slope = 2, thal = 3)

  # Make a prediction
  prediction <- predict(model, newdata = new_observation)


  #Print the prediction
  print(prediction)

  #Assign the prediction to a variable
  my_variable <- as.numeric(prediction)

}


