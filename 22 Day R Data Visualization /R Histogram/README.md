

# Histogram in R – 

## 1. What is a Histogram?

A **histogram** is a graphical representation used to show the **distribution of numerical data**.

It groups data into **intervals (bins)** and shows:

* Frequency of values
* Data distribution shape
* Data spread
* Skewness (left or right)

---

## 2. When to Use a Histogram?

Use a histogram when you want to:

* Understand data distribution
* Check whether data is normal or skewed
* Analyze frequency of values
* Perform exploratory data analysis (EDA)

---

## 3. Difference Between Histogram and Bar Chart

| Histogram                | Bar Chart                 |
| ------------------------ | ------------------------- |
| Used for continuous data | Used for categorical data |
| Bars touch each other    | Bars have gaps            |
| Shows data distribution  | Shows category comparison |

---

## 4. Creating a Simple Histogram in R

### Step 1: Create Data

```r
data <- c(12, 15, 18, 20, 22, 25, 28, 30, 35, 40)
```

---

### Step 2: Create Histogram

```r
hist(data)
```

Explanation:

* X-axis shows data ranges (bins)
* Y-axis shows frequency
* Bars represent number of values in each range

---

## 5. Histogram with Title and Labels

```r
hist(data,
     main = "Simple Histogram Example",
     xlab = "Values",
     ylab = "Frequency",
     col = "lightblue")
```

---

## 6. Changing Number of Bins

```r
hist(data,
     breaks = 5,
     col = "orange",
     main = "Histogram with 5 Bins")
```

More bins show more detail, fewer bins show general trend.

---

## 7. Histogram Using Real Dataset

### Step 1: Load Built-in Dataset

```r
data(mtcars)
```

---

### Step 2: Histogram of Mileage (mpg)

```r
hist(mtcars$mpg,
     main = "Distribution of Car Mileage",
     xlab = "Miles Per Gallon",
     col = "lightgreen")
```

---

## 8. Probability Histogram

To show **density instead of frequency**:

```r
hist(mtcars$mpg,
     probability = TRUE,
     col = "skyblue",
     main = "Probability Histogram")
```

---

## 9. Add Density Curve to Histogram

```r
hist(mtcars$mpg,
     probability = TRUE,
     col = "lightgray",
     main = "Histogram with Density Curve")

lines(density(mtcars$mpg), lwd = 2)
```

---

## 10. Horizontal Histogram

```r
hist(data,
     col = "pink",
     main = "Horizontal Histogram",
     horiz = TRUE)
```

---

## 11. Histogram Parameters (Important)

| Parameter      | Purpose                      |
| -------------- | ---------------------------- |
| `main`         | Title                        |
| `xlab`, `ylab` | Axis labels                  |
| `col`          | Bar color                    |
| `breaks`       | Number of bins               |
| `probability`  | Density instead of frequency |
| `horiz`        | Horizontal histogram         |

---

## 12. Common Mistakes by Beginners

* Using histogram for categorical data
* Using too many or too few bins
* Forgetting labels and title
* Confusing histogram with bar chart

---

## 13. Summary

* Histogram shows data distribution
* Used for continuous numerical data
* Helps in understanding data pattern
* Important tool in data analysis


