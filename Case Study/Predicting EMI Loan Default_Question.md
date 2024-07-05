### Case Study: Predicting EMI Loan Default

#### Scenario:

You work for a financial institution that provides loans to customers. The institution wants to develop a model to predict whether a customer will default on their EMI (Equated Monthly Installment) loan. Predicting defaults will help the institution manage risk and make informed lending decisions. You are provided with a dataset containing various features about the customers and their loan status.

#### Dataset:

The dataset provided is `loan_data.csv` with the following columns:

- `CustomerID`: Unique identifier for each customer
- `Age`: Age of the customer
- `Gender`: Gender of the customer (Male, Female)
- `Married`: Whether the customer is married (Yes, No)
- `Dependents`: Number of dependents
- `Education`: Education level (Graduate, Not Graduate)
- `Self_Employed`: Whether the customer is self-employed (Yes, No)
- `ApplicantIncome`: Monthly income of the applicant
- `CoapplicantIncome`: Monthly income of the co-applicant
- `LoanAmount`: Loan amount (in thousands)
- `Loan_Amount_Term`: Term of the loan (in months)
- `Credit_History`: Credit history (1: good, 0: bad)
- `Property_Area`: Area of the property (Urban, Semiurban, Rural)
- `Loan_Status`: Whether the loan was approved (Y, N)

#### Task:

1. **Load and Explore the Dataset:**
   - Load the `loan_data.csv` dataset into R.
   - Explore the dataset to understand its structure and contents.
   
2. **Data Cleaning:**
   - Check for and handle any missing values.
   - Encode categorical variables as needed for modeling.

3. **Data Visualization:**
   - Create visualizations to understand the distribution of features and their relationship with loan default.

4. **Feature Engineering:**
   - Create any new features that might help in predicting loan defaults.

5. **Splitting the Data:**
   - Split the data into training and testing sets.

6. **Building Models:**
   - Build at least two different models to predict loan defaults (e.g., Decision Tree, Logistic Regression).

7. **Evaluating the Models:**
   - Evaluate the performance of the models using appropriate metrics (e.g., accuracy, confusion matrix, ROC curve).

8. **Making Predictions:**
   - Use the best-performing model to make predictions on new data.

9. **Reporting:**
   - Provide a comprehensive report on your findings, including visualizations, model evaluations, and any insights gained from the analysis.

### Step-by-Step Solution in R

1. **Load and Explore the Dataset:**

```r
# Load necessary libraries
library(ggplot2)
library(caTools)
library(caret)
library(rpart)
library(rpart.plot)
library(dplyr)

# Load the dataset
loan_data <- read.csv("loan_data.csv")

# View the first few rows
head(loan_data)

# Summary of the dataset
summary(loan_data)

# Structure of the dataset
str(loan_data)
```

2. **Data Cleaning:**

```r
# Check for missing values
sum(is.na(loan_data))

# Handle missing values (example: impute with median for numerical and mode for categorical)
loan_data$LoanAmount[is.na(loan_data$LoanAmount)] <- median(loan_data$LoanAmount, na.rm = TRUE)
loan_data$Loan_Amount_Term[is.na(loan_data$Loan_Amount_Term)] <- median(loan_data$Loan_Amount_Term, na.rm = TRUE)
loan_data$Credit_History[is.na(loan_data$Credit_History)] <- as.numeric(names(sort(table(loan_data$Credit_History), decreasing = TRUE)[1]))

loan_data$Gender[is.na(loan_data$Gender)] <- as.character(names(sort(table(loan_data$Gender), decreasing = TRUE)[1]))
loan_data$Married[is.na(loan_data$Married)] <- as.character(names(sort(table(loan_data$Married), decreasing = TRUE)[1]))
loan_data$Dependents[is.na(loan_data$Dependents)] <- as.character(names(sort(table(loan_data$Dependents), decreasing = TRUE)[1]))
loan_data$Self_Employed[is.na(loan_data$Self_Employed)] <- as.character(names(sort(table(loan_data$Self_Employed), decreasing = TRUE)[1]))

# Encode categorical variables
loan_data$Gender <- as.factor(loan_data$Gender)
loan_data$Married <- as.factor(loan_data$Married)
loan_data$Dependents <- as.factor(loan_data$Dependents)
loan_data$Education <- as.factor(loan_data$Education)
loan_data$Self_Employed <- as.factor(loan_data$Self_Employed)
loan_data$Property_Area <- as.factor(loan_data$Property_Area)
loan_data$Loan_Status <- ifelse(loan_data$Loan_Status == "Y", 1, 0)
```

3. **Data Visualization:**

```r
# Visualize the distribution of loan status
ggplot(loan_data, aes(x = factor(Loan_Status))) +
  geom_bar() +
  labs(x = "Loan Status", y = "Count", title = "Distribution of Loan Status")

# Visualize the relationship between LoanAmount and Loan_Status
ggplot(loan_data, aes(x = LoanAmount, fill = factor(Loan_Status))) +
  geom_histogram(binwidth = 10, position = "dodge") +
  labs(x = "Loan Amount", y = "Count", title = "Loan Amount vs Loan Status")
```

4. **Feature Engineering:**

```r
# Create TotalIncome feature
loan_data$TotalIncome <- loan_data$ApplicantIncome + loan_data$CoapplicantIncome

# Create EMI feature
loan_data$EMI <- loan_data$LoanAmount / loan_data$Loan_Amount_Term

# Log transformation for skewed features
loan_data$LoanAmount <- log1p(loan_data$LoanAmount)
loan_data$TotalIncome <- log1p(loan_data$TotalIncome)
loan_data$EMI <- log1p(loan_data$EMI)
```

5. **Splitting the Data:**

```r
# Split the data
set.seed(123)
split <- sample.split(loan_data$Loan_Status, SplitRatio = 0.7)
training_set <- subset(loan_data, split == TRUE)
testing_set <- subset(loan_data, split == FALSE)
```

6. **Building Models:**

```r
# Decision Tree Model
decision_tree_model <- rpart(Loan_Status ~ ., data = training_set, method = "class")

# Logistic Regression Model
logistic_regression_model <- glm(Loan_Status ~ ., data = training_set, family = binomial)
```

7. **Evaluating the Models:**

```r
# Decision Tree Predictions
dt_predictions <- predict(decision_tree_model, testing_set, type = "class")

# Confusion Matrix for Decision Tree
confusionMatrix(as.factor(dt_predictions), as.factor(testing_set$Loan_Status))

# Logistic Regression Predictions
lr_probabilities <- predict(logistic_regression_model, testing_set, type = "response")
lr_predictions <- ifelse(lr_probabilities > 0.5, 1, 0)

# Confusion Matrix for Logistic Regression
confusionMatrix(as.factor(lr_predictions), as.factor(testing_set$Loan_Status))
```

8. **Making Predictions:**

```r
# New customer data
new_customer <- data.frame(Age = 30, Gender = "Male", Married = "Yes", Dependents = "0",
                           Education = "Graduate", Self_Employed = "No", ApplicantIncome = 5000,
                           CoapplicantIncome = 0, LoanAmount = log1p(150), Loan_Amount_Term = 360,
                           Credit_History = 1, Property_Area = "Urban", TotalIncome = log1p(5000),
                           EMI = log1p(150/360))

# Predict using the decision tree model
dt_prediction_new <- predict(decision_tree_model, new_customer, type = "class")
print(dt_prediction_new)

# Predict using the logistic regression model
lr_probability_new <- predict(logistic_regression_model, new_customer, type = "response")
lr_prediction_new <- ifelse(lr_probability_new > 0.5, 1, 0)
print(lr_prediction_new)
```

This step-by-step case study provides a structured approach to analyzing and predicting EMI loan defaults using R. Feel free to expand on these steps and include more advanced techniques and visualizations as needed.
