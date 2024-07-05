### Case Study Question

**Objective:**
Predict the miles per gallon (mpg) of cars using various features available in the "mtcars" dataset.

**Dataset Description:**
The "mtcars" dataset consists of 32 observations on 11 variables. The variables are:

1. `mpg`: Miles/(US) gallon
2. `cyl`: Number of cylinders
3. `disp`: Displacement (cu.in.)
4. `hp`: Gross horsepower
5. `drat`: Rear axle ratio
6. `wt`: Weight (1000 lbs)
7. `qsec`: 1/4 mile time
8. `vs`: V/S (engine shape)
9. `am`: Transmission (0 = automatic, 1 = manual)
10. `gear`: Number of forward gears
11. `carb`: Number of carburetors

**Steps to Follow:**

1. **Loading and Exploring the Dataset:**
   - Load the "mtcars" dataset.
   - View the first few rows, summary statistics, and structure of the dataset.

2. **Data Cleaning:**
   - Check for missing values and handle them if necessary.

3. **Data Visualization:**
   - Create visualizations to explore relationships between `mpg` and other features.

4. **Splitting the Data:**
   - Split the data into training and testing sets.

5. **Building a Model:**
   - Build a linear regression model to predict `mpg` using the other variables as predictors.

6. **Evaluating the Model:**
   - Evaluate the model's performance on the testing set using appropriate metrics.

7. **Making Predictions:**
   - Use the model to make predictions on new data.

### Sample Code

Here is an example code outline to get you started:

```r
# Load the dataset
data(mtcars)

# Step 1: Explore the dataset
head(mtcars)
summary(mtcars)
str(mtcars)

# Step 2: Data Cleaning
# Check for missing values
sum(is.na(mtcars))

# Step 3: Data Visualization
library(ggplot2)
# Scatter plot of mpg vs hp
ggplot(mtcars, aes(x = hp, y = mpg)) + geom_point() + theme_minimal()
# Pair plot
pairs(mtcars)

# Step 4: Splitting the Data
library(caTools)
set.seed(123)
split <- sample.split(mtcars$mpg, SplitRatio = 0.7)
training_set <- subset(mtcars, split == TRUE)
testing_set <- subset(mtcars, split == FALSE)

# Step 5: Building the Model
model <- lm(mpg ~ ., data = training_set)

# Step 6: Evaluating the Model
summary(model)
predictions <- predict(model, testing_set)
# Calculate RMSE
rmse <- sqrt(mean((testing_set$mpg - predictions)^2))
print(paste("RMSE:", round(rmse, 2)))

# Step 7: Making Predictions
new_data <- data.frame(cyl = 4, disp = 160, hp = 110, drat = 3.9, wt = 2.62, qsec = 16.46, vs = 0, am = 1, gear = 4, carb = 2)
predicted_mpg <- predict(model, new_data)
print(predicted_mpg)
```

### Questions to Answer:

1. What is the relationship between horsepower (`hp`) and miles per gallon (`mpg`)?
2. Which features are most significant in predicting `mpg`?
3. What is the Root Mean Square Error (RMSE) of your model on the testing set?
4. What would be the predicted `mpg` for a car with the following characteristics:
   - 4 cylinders
   - 160 cu.in. displacement
   - 110 horsepower
   - 3.9 rear axle ratio
   - 2.62 weight (1000 lbs)
   - 16.46 1/4 mile time
   - 0 V/S
   - Manual transmission (1)
   - 4 forward gears
   - 2 carburetors

This case study provides a comprehensive exercise in data analysis, visualization, modeling, and prediction using R.
