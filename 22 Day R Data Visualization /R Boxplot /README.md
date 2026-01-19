
# Boxplot in R –

## 1. What is a Boxplot?

A **boxplot** (also called a **box-and-whisker plot**) is a graphical representation used to display the **distribution of numerical data**.

It helps us understand:

* Data spread
* Median value
* Quartiles
* Outliers

Boxplots are widely used in **data analysis and statistics**.

---

## 2. Components of a Boxplot

A boxplot consists of five main values:

| Component | Description                       |
| --------- | --------------------------------- |
| Minimum   | Smallest value excluding outliers |
| Q1        | First quartile (25%)              |
| Median    | Middle value (50%)                |
| Q3        | Third quartile (75%)              |
| Maximum   | Largest value excluding outliers  |
| Outliers  | Extreme values shown as dots      |

---

## 3. Why Use a Boxplot?

Boxplots are useful because they:

* Show data distribution clearly
* Identify outliers easily
* Compare multiple datasets
* Summarize large data in a compact form

---

## 4. Creating a Simple Boxplot in R

### Step 1: Create a Numeric Vector

```r
data <- c(10, 12, 15, 18, 20, 22, 25, 30, 100)
```

---

### Step 2: Draw the Boxplot

```r
boxplot(data)
```

Explanation:

* The box represents Q1 to Q3
* The line inside the box is the median
* Dots represent outliers

---

## 5. Adding Title and Labels

```r
boxplot(data,
        main = "Simple Boxplot Example",
        ylab = "Values",
        col = "lightblue")
```

---

## 6. Horizontal Boxplot

```r
boxplot(data,
        horizontal = TRUE,
        main = "Horizontal Boxplot",
        col = "orange")
```

---

## 7. Boxplot Using a Real Dataset

### Step 1: Load Built-in Dataset

```r
data(mtcars)
```

---

### Step 2: Boxplot of Mileage

```r
boxplot(mtcars$mpg,
        main = "Mileage of Cars",
        ylab = "Miles Per Gallon",
        col = "lightgreen")
```

---

## 8. Multiple Boxplots in One Graph

```r
boxplot(mtcars[, c("mpg", "hp", "wt")],
        main = "Comparison of Car Features",
        col = c("skyblue", "pink", "yellow"))
```

Use this to compare multiple variables.

---

## 9. Grouped Boxplot (Important Concept)

### Example: Mileage by Number of Cylinders

```r
boxplot(mpg ~ cyl,
        data = mtcars,
        main = "Mileage vs Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Mileage",
        col = c("lightblue", "lightgreen", "lightpink"))
```

This shows how mileage changes across engine types.

---

## 10. Identifying Outliers in R

```r
boxplot.stats(data)$out
```

Output:

```
[1] 100
```

---

## 11. Notched Boxplot

```r
boxplot(data,
        notch = TRUE,
        col = "cyan",
        main = "Notched Boxplot")
```

Notches help compare medians.

---

## 12. Common Boxplot Parameters

| Parameter      | Purpose           |
| -------------- | ----------------- |
| `main`         | Title             |
| `xlab`, `ylab` | Axis labels       |
| `col`          | Box color         |
| `horizontal`   | Horizontal plot   |
| `notch`        | Median confidence |
| `border`       | Border color      |

---

## 13. Summary

* Boxplot is used to visualize data distribution
* It shows median, quartiles, and outliers
* Helpful for comparing datasets
* Very important in data analysis

---

