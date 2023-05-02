Predictheart:
    This package is used to predict the presence of heart disease based on a set of input variables.The Pred() function in this code predicts the presence of heart disease based on a set of input variables. The input variables include age, sex, chest pain type, resting blood pressure, serum cholesterol, fasting blood sugar, resting electrocardiographic results, maximum heart rate achieved, exercise induced angina, ST depression induced by exercise relative to rest, slope of the peak exercise ST segment, number of major vessels colored by fluoroscopy, and thalassemia.The function reads in a CSV file containing data on heart disease, converts the target variable to a factor, and then splits the data into training and testing sets. The training set is used to train a random forest model, and the testing set is used to evaluate the accuracy of the model.
    The function then defines a new observation with a set of input variables and uses the trained model to predict the presence of heart disease for this observation.

To test the Pred function, you can simply call it and pass in the input variables as arguments.
For Example: 
   Pred(age = 45, sex = 1, cp = 2, trestbps = 130, chol = 246, fbs = 0, restecg = 160, thalach = 150, exang = 0, oldpeak = 1.5, slope = 1, ca = 0, thal = 2, target = 0)

This will run the Pred function with the provided input variables and return a prediction of whether the patient has heart disease (0 = no, 1 = yes). You can adjust the values of the input variables to test different scenarios.


Load the following packages before using the code.
> library(randomForest)
> library(stats)
> library(base)
>library(dplyr)
> library(magrittr)
> library(ggplot2)
> library(lattice)
> library(randomForest)
> library(caret)
library(devtools)
    
    
    

You can check it out the package creation in detail in my blog- https://likki1499.blogspot.com/2023/04/prediction-of-heart-disease.html
