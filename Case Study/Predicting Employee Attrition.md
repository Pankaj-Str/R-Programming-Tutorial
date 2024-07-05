### Case Study: Predicting Employee Attrition

#### Scenario:

You are a data scientist at a large corporation. The Human Resources (HR) department has tasked you with predicting which employees are likely to leave the company (attrition). Reducing employee attrition is critical for the company to save on hiring and training costs. The HR department has provided you with a dataset containing various features about the employees.

#### Dataset:

The dataset provided is `employee_attrition.csv` with the following columns:

- `Age`: Age of the employee
- `BusinessTravel`: Frequency of travel (Rarely, Frequently, Never)
- `Department`: Department of the employee (Sales, Research & Development, Human Resources)
- `DistanceFromHome`: Distance from home to work (in miles)
- `Education`: Education level (1-5)
- `EnvironmentSatisfaction`: Satisfaction with the work environment (1-4)
- `JobInvolvement`: Job involvement level (1-4)
- `JobLevel`: Job level (1-5)
- `JobSatisfaction`: Job satisfaction level (1-4)
- `MonthlyIncome`: Monthly income
- `NumCompaniesWorked`: Number of companies the employee has worked at
- `OverTime`: Whether the employee works overtime (Yes, No)
- `PercentSalaryHike`: Percent increase in salary over the last year
- `PerformanceRating`: Performance rating (1-4)
- `RelationshipSatisfaction`: Relationship satisfaction level (1-4)
- `TotalWorkingYears`: Total years the employee has worked
- `TrainingTimesLastYear`: Number of training sessions attended last year
- `WorkLifeBalance`: Work-life balance satisfaction level (1-4)
- `YearsAtCompany`: Number of years the employee has been at the company
- `YearsInCurrentRole`: Number of years in the current role
- `YearsSinceLastPromotion`: Number of years since the last promotion
- `YearsWithCurrManager`: Number of years with the current manager
- `Attrition`: Whether the employee left the company (Yes, No)

#### Task:

1. **Load and Explore the Dataset:**
   - Load the `employee_attrition.csv` dataset into R.
   - Explore the dataset to understand its structure and contents.
   
2. **Data Cleaning:**
   - Check for and handle any missing values.
   - Encode categorical variables as needed for modeling.

3. **Data Visualization:**
   - Create visualizations to understand the distribution of features and their relationship with attrition.
   
4. **Feature Engineering:**
   - Create any new features that might help in predicting attrition.

5. **Splitting the Data:**
   - Split the data into training and testing sets.

6. **Building Models:**
   - Build at least two different models to predict employee attrition (e.g., Decision Tree, Logistic Regression).
   
7. **Evaluating the Models:**
   - Evaluate the performance of the models using appropriate metrics (e.g., accuracy, confusion matrix, ROC curve).

8. **Making Predictions:**
   - Use the best-performing model to make predictions on new data.
   
9. **Reporting:**
   - Provide a comprehensive report on your findings, including visualizations, model evaluations, and any insights gained from the analysis.

#### Steps in R:

Here are some R code snippets to help you get started with each task:

1. **Load and Explore the Dataset:**

```r
# Load necessary libraries
library(ggplot2)
library(caTools)
library(caret)
library(rpart)
library(rpart.plot)

# Load the dataset
employee_data <- read.csv("employee_attrition.csv")

# View the first few rows
head(employee_data)

# Summary of the dataset
summary(employee_data)

# Structure of the dataset
str(employee_data)
```

2. **Data Cleaning:**

```r
# Check for missing values
sum(is.na(employee_data))

# Encode categorical variables
employee_data$Attrition <- ifelse(employee_data$Attrition == "Yes", 1, 0)
employee_data$OverTime <- ifelse(employee_data$OverTime == "Yes", 1, 0)
employee_data$BusinessTravel <- as.factor(employee_data$BusinessTravel)
employee_data$Department <- as.factor(employee_data$Department)
```

3. **Data Visualization:**

```r
# Visualize the distribution of attrition
ggplot(employee_data, aes(x = factor(Attrition))) +
  geom_bar() +
  labs(x = "Attrition", y = "Count", title = "Distribution of Attrition")

# Visualize the relationship between MonthlyIncome and Attrition
ggplot(employee_data, aes(x = MonthlyIncome, fill = factor(Attrition))) +
  geom_histogram(binwidth = 1000, position = "dodge") +
  labs(x = "Monthly Income", y = "Count", title = "Monthly Income vs Attrition")
```

4. **Splitting the Data:**

```r
# Split the data
set.seed(123)
split <- sample.split(employee_data$Attrition, SplitRatio = 0.7)
training_set <- subset(employee_data, split == TRUE)
testing_set <- subset(employee_data, split == FALSE)
```

5. **Building Models:**

```r
# Decision Tree Model
decision_tree_model <- rpart(Attrition ~ ., data = training_set, method = "class")

# Logistic Regression Model
logistic_regression_model <- glm(Attrition ~ ., data = training_set, family = binomial)
```

6. **Evaluating the Models:**

```r
# Decision Tree Predictions
dt_predictions <- predict(decision_tree_model, testing_set, type = "class")

# Confusion Matrix for Decision Tree
confusionMatrix(as.factor(dt_predictions), as.factor(testing_set$Attrition))

# Logistic Regression Predictions
lr_probabilities <- predict(logistic_regression_model, testing_set, type = "response")
lr_predictions <- ifelse(lr_probabilities > 0.5, 1, 0)

# Confusion Matrix for Logistic Regression
confusionMatrix(as.factor(lr_predictions), as.factor(testing_set$Attrition))
```

7. **Making Predictions:**

```r
# New employee data
new_employee <- data.frame(Age = 35, BusinessTravel = "Travel_Rarely", Department = "Sales", 
                           DistanceFromHome = 10, Education = 3, EnvironmentSatisfaction = 3, 
                           JobInvolvement = 3, JobLevel = 2, JobSatisfaction = 4, 
                           MonthlyIncome = 5000, NumCompaniesWorked = 2, OverTime = 0, 
                           PercentSalaryHike = 15, PerformanceRating = 3, 
                           RelationshipSatisfaction = 3, TotalWorkingYears = 10, 
                           TrainingTimesLastYear = 3, WorkLifeBalance = 3, 
                           YearsAtCompany = 5, YearsInCurrentRole = 2, 
                           YearsSinceLastPromotion = 1, YearsWithCurrManager = 3)

# Predict using the decision tree model
dt_prediction_new <- predict(decision_tree_model, new_employee, type = "class")
print(dt_prediction_new)

# Predict using the logistic regression model
lr_probability_new <- predict(logistic_regression_model, new_employee, type = "response")
lr_prediction_new <- ifelse(lr_probability_new > 0.5, 1, 0)
print(lr_prediction_new)
```
