

# Pie Chart in R –

## 1. What is a Pie Chart?

A **pie chart** is a circular chart used to show **proportions or percentages** of a whole.

Each slice represents a category’s contribution to the total.

---

## 2. When to Use a Pie Chart?

Use a pie chart when:

* You want to show percentage distribution
* You have a small number of categories
* Total value equals 100 percent

Avoid pie charts when:

* There are too many categories
* Values are very close to each other

---

## 3. Creating a Simple Pie Chart in R

### Step 1: Create Data

```r
values <- c(40, 25, 20, 15)
```

---

### Step 2: Create Labels

```r
labels <- c("India", "USA", "UK", "Canada")
```

---

### Step 3: Draw Pie Chart

```r
pie(values, labels)
```

---

## 4. Pie Chart with Title and Colors

```r
pie(values,
    labels = labels,
    main = "Country-wise Distribution",
    col = c("orange", "skyblue", "lightgreen", "pink"))
```

---

## 5. Pie Chart with Percentages

### Step 1: Calculate Percentages

```r
percent <- round(values / sum(values) * 100)
labels_with_percent <- paste(labels, percent, "%")
```

---

### Step 2: Plot Pie Chart

```r
pie(values,
    labels = labels_with_percent,
    main = "Country-wise Percentage Distribution")
```

---

## 6. Pie Chart Using Real Dataset

### Example: Gender Distribution

```r
gender <- c(60, 40)
labels <- c("Male", "Female")

pie(gender,
    labels = labels,
    main = "Gender Distribution",
    col = c("lightblue", "pink"))
```

---

## 7. 3D Pie Chart (Using plotrix Package)

### Step 1: Install and Load Package

```r
install.packages("plotrix")
library(plotrix)
```

---

### Step 2: Create 3D Pie Chart

```r
pie3D(values,
      labels = labels,
      main = "3D Pie Chart Example",
      explode = 0.1)
```

---

## 8. Pie Chart Parameters

| Parameter    | Description         |
| ------------ | ------------------- |
| `labels`     | Names of categories |
| `main`       | Title               |
| `col`        | Slice colors        |
| `radius`     | Size of pie         |
| `clockwise`  | Direction of slices |
| `init.angle` | Starting angle      |

---

## 9. Common Mistakes by Beginners

* Using too many categories
* Not showing percentages
* Using pie chart for comparison
* Overusing 3D pie charts

---

## 10. Summary

* Pie chart shows parts of a whole
* Best for percentage or proportion data
* Simple to create in R using `pie()`
* Not ideal for detailed comparisons


