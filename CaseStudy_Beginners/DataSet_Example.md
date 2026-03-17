
---

# 1. View All Built-in Datasets in R

You can see all available datasets using:

```r
data()
```

This will open a list of datasets that come with R.

Some famous ones include:

* `mtcars`
* `airquality`
* `ToothGrowth`
* `PlantGrowth`
* `USArrests`
* `Titanic`
* `iris`

---

# 2. Example 1 – mtcars Dataset (Car Data)

The **mtcars dataset** contains information about **32 cars**.

Variables include:

| Column | Meaning             |
| ------ | ------------------- |
| mpg    | Miles per gallon    |
| cyl    | Number of cylinders |
| hp     | Horsepower          |
| wt     | Weight              |
| gear   | Number of gears     |

### Load Dataset

```r
data(mtcars)
```

### View Dataset

```r
mtcars
```

### First Rows

```r
head(mtcars)
```

### Structure

```r
str(mtcars)
```

Output example:

```
'data.frame': 32 obs. of 11 variables
```

### Average Mileage

```r
mean(mtcars$mpg)
```

### Filter Cars with High Horsepower

```r
mtcars[mtcars$hp > 150, ]
```

### Simple Plot

```r
plot(mtcars$wt, mtcars$mpg)
```

This shows **weight vs mileage** relationship.

---

# 3. Example 2 – airquality Dataset (Environmental Data)

This dataset contains **New York air quality data**.

Variables include:

| Column  | Meaning         |
| ------- | --------------- |
| Ozone   | Ozone level     |
| Solar.R | Solar radiation |
| Wind    | Wind speed      |
| Temp    | Temperature     |
| Month   | Month           |
| Day     | Day             |

### Load Dataset

```r
data(airquality)
```

### View Data

```r
head(airquality)
```

Example output:

```
  Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2
```

### Summary

```r
summary(airquality)
```

### Average Temperature

```r
mean(airquality$Temp)
```

### Plot

```r
plot(airquality$Temp, airquality$Ozone)
```

---

# 4. Example 3 – ToothGrowth Dataset

This dataset studies the **effect of vitamin C on tooth growth in guinea pigs**.

Variables:

| Column | Meaning         |
| ------ | --------------- |
| len    | Tooth length    |
| supp   | Supplement type |
| dose   | Dose level      |

### Load Dataset

```r
data(ToothGrowth)
```

### View Data

```r
head(ToothGrowth)
```

### Structure

```r
str(ToothGrowth)
```

### Summary

```r
summary(ToothGrowth)
```

### Box Plot

```r
boxplot(len ~ supp, data = ToothGrowth)
```

This compares **tooth length by supplement type**.

---

# 5. Example 4 – USArrests Dataset

This dataset contains **crime statistics in US states**.

Columns include:

* Murder
* Assault
* UrbanPop
* Rape

### Load Dataset

```r
data(USArrests)
```

### View Data

```r
head(USArrests)
```

### Structure

```r
str(USArrests)
```

### Summary

```r
summary(USArrests)
```

### Plot Example

```r
plot(USArrests$Murder, USArrests$Assault)
```

---

# 6. Convert Dataset to Data Frame

Most built-in datasets are already data frames, but you can confirm:

```r
class(mtcars)
```

Output:

```
"data.frame"
```

---

# 7. Complete Example Script

```r
# Load dataset
data(mtcars)

# View data
head(mtcars)

# Structure
str(mtcars)

# Mean mileage
mean(mtcars$mpg)

# Filter data
mtcars[mtcars$hp > 150, ]

# Plot
plot(mtcars$wt, mtcars$mpg)
```

---

# Common Built-in Datasets in R

| Dataset     | Description             |
| ----------- | ----------------------- |
| iris        | Flower dataset          |
| mtcars      | Car specifications      |
| airquality  | Environmental data      |
| ToothGrowth | Tooth growth experiment |
| USArrests   | Crime statistics        |
| Titanic     | Passenger survival data |

---


