# R Factors 

Factors in R are used to handle categorical data, which can take a limited number of unique values known as levels. This tutorial will cover the basics of creating, inspecting, and manipulating factors in R.

### What is a Factor?

A factor is a data structure used for fields that take only predefined, finite values (categorical data). Factors are useful in statistical modeling and data analysis when dealing with categorical variables.

### Creating Factors

#### Method 1: Using `factor()`

```r
# Create a character vector
gender_char <- c("Male", "Female", "Female", "Male", "Female")

# Convert to a factor
gender_factor <- factor(gender_char)

# Print the factor
print(gender_factor)
```

#### Method 2: Specifying Levels

```r
# Create a factor with specific levels
status_char <- c("single", "married", "single", "divorced", "married")
status_factor <- factor(status_char, levels = c("single", "married", "divorced"))

# Print the factor
print(status_factor)
```

### Inspecting Factors

#### View the Structure

```r
# View the structure of the factor
str(gender_factor)
```

#### Summary Statistics

```r
# Get summary statistics
summary(gender_factor)
```

### Accessing Factor Levels

#### Get Levels

```r
# Get the levels of a factor
levels(gender_factor)
```

#### Set Levels

```r
# Change the levels of a factor
levels(gender_factor) <- c("Female", "Male")

# Print the factor with new levels
print(gender_factor)
```

### Modifying Factors

#### Add Levels

```r
# Add a new level
levels(gender_factor) <- c(levels(gender_factor), "Non-binary")

# Print the factor with the new level added
print(gender_factor)
```

#### Drop Levels

```r
# Drop unused levels
gender_factor <- droplevels(gender_factor)

# Print the factor after dropping levels
print(gender_factor)
```

### Converting Between Factors and Other Types

#### Factor to Character

```r
# Convert factor to character
gender_char <- as.character(gender_factor)

# Print the character vector
print(gender_char)
```

#### Factor to Numeric

```r
# Convert factor to numeric
gender_numeric <- as.numeric(gender_factor)

# Print the numeric vector
print(gender_numeric)
```

### Ordered Factors

#### Creating Ordered Factors

```r
# Create an ordered factor
education_char <- c("highschool", "college", "masters", "college", "phd")
education_factor <- factor(education_char, levels = c("highschool", "college", "masters", "phd"), ordered = TRUE)

# Print the ordered factor
print(education_factor)
```

#### Comparing Ordered Factors

```r
# Compare ordered factors
education_factor[1] < education_factor[2]
```

### Handling Missing Values

#### Identify Missing Values

```r
# Create a factor with missing values
status_char <- c("single", "married", NA, "divorced", "married")
status_factor <- factor(status_char, levels = c("single", "married", "divorced"))

# Identify missing values
is.na(status_factor)
```

#### Remove Missing Values

```r
# Remove missing values
status_factor_no_na <- na.omit(status_factor)

# Print the factor without missing values
print(status_factor_no_na)
```

### Practical Example

#### Creating a Data Frame with Factors

```r
# Create a data frame with factors
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David"),
  Gender = factor(c("Female", "Male", "Male", "Female")),
  MaritalStatus = factor(c("Single", "Married", "Single", "Divorced"), levels = c("Single", "Married", "Divorced"))
)

# Print the data frame
print(df)
```


## Illustrative examples of factors in R, demonstrating their creation, manipulation, and use in analysis:

**Example 1: Basic Factor Creation**

```R
# Create a factor for eye colors
eye_color <- factor(c("blue", "brown", "green", "brown", "blue"))
print(eye_color)
```

Output:

```
[1] blue  brown green brown blue 
Levels: blue brown green
```

This creates a factor named `eye_color` with three levels: "blue," "brown," and "green."

**Example 2: Ordered Factor**

```R
# Create an ordered factor for educational levels
education_level <- factor(
  c("high school", "bachelor's", "master's", "high school", "bachelor's"),
  levels = c("high school", "bachelor's", "master's"),
  ordered = TRUE
)
print(education_level)
```

Output:

```
[1] high school bachelor's master's   high school bachelor's
Levels: high school < bachelor's < master's
```

In this case, we define the order of levels explicitly, indicating that "high school" is lower than "bachelor's," which is lower than "master's."

**Example 3: Factor in Data Frame**

```R
# Create a data frame with a factor column
survey_data <- data.frame(
  age = c(25, 32, 48, 55, 38),
  gender = factor(c("F", "M", "F", "M", "F")),
  income_level = factor(c("low", "medium", "high", "medium", "low"), ordered = TRUE)
)
print(survey_data)
```

Output:

```
  age gender income_level
1  25      F          low
2  32      M       medium
3  48      F         high
4  55      M       medium
5  38      F          low
```

Here, `gender` is an unordered factor, while `income_level` is an ordered factor.

**Example 4: Analyzing Factor Data**

```R
# Frequency table for eye colors
table(eye_color)

# Summary statistics for income levels (note it respects ordering)
summary(survey_data$income_level)
```

Output:

```
eye_color
 blue brown green 
    2     2     1 

 low medium  high 
 2     2     1
```

These commands show how you can analyze factor data to get frequencies and summary statistics.

**Example 5: Factor in Statistical Models**

```R
# Simple linear regression with a factor predictor
model <- lm(age ~ income_level, data = survey_data)
summary(model)
```

This example demonstrates how factors can be used as predictors in regression models.


