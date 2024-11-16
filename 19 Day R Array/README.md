# **Tutorial: R Array Basics with "Codes with Pankaj"**

Welcome to **Codes with Pankaj**! Today, we'll dive into **R Arrays**, a versatile data structure for storing multi-dimensional data. Arrays in R allow you to work efficiently with structured data in two or more dimensions.

---

## **What is an R Array?**

An R **array** is a data structure that can store elements of the same type (numeric, character, etc.) in two or more dimensions. Arrays extend the concept of matrices by supporting dimensions beyond 2D.

---

## **Step-by-Step Guide**

### **1. Creating an Array**

The `array()` function is used to create an array. 

#### **Syntax:**
```R
array(data, dim, dimnames)
```

- **data**: The vector to be stored in the array.
- **dim**: A numeric vector specifying the dimensions of the array.
- **dimnames**: A list of names for the dimensions.

#### **Example:**
```R
my_array <- array(
  data = 1:12,
  dim = c(3, 4),
  dimnames = list(
    rows = c("Row1", "Row2", "Row3"),
    cols = c("Col1", "Col2", "Col3", "Col4")
  )
)
print(my_array)
```

#### **Output:**
```
       Col1 Col2 Col3 Col4
Row1     1    4    7   10
Row2     2    5    8   11
Row3     3    6    9   12
```

### **Explanation:**
- `dim = c(3, 4)` creates an array with 3 rows and 4 columns.
- `dimnames` assigns custom labels to rows and columns.

---

### **2. Multi-Dimensional Arrays**

Arrays can have more than two dimensions.

#### **Example:**
```R
multi_array <- array(
  data = 1:24,
  dim = c(3, 4, 2),  # 3 rows, 4 columns, 2 layers
  dimnames = list(
    rows = c("Row1", "Row2", "Row3"),
    cols = c("Col1", "Col2", "Col3", "Col4"),
    layers = c("Layer1", "Layer2")
  )
)
print(multi_array)
```

#### **Output:**
```
, , Layer1
       Col1 Col2 Col3 Col4
Row1     1    4    7   10
Row2     2    5    8   11
Row3     3    6    9   12

, , Layer2
       Col1 Col2 Col3 Col4
Row1    13   16   19   22
Row2    14   17   20   23
Row3    15   18   21   24
```

---

### **3. Accessing Array Elements**

You can access elements using **indexing**. Specify indices for each dimension in square brackets.

#### **Example:**
```R
# Access a specific element
print(multi_array[2, 3, 1])
# Output: 8

# Access an entire row
print(multi_array[2, , 1])
# Output: Row 2 in Layer 1

# Access an entire column
print(multi_array[, 3, 2])
# Output: Column 3 in Layer 2
```

---

### **4. Modifying Array Elements**

You can update specific elements or slices of the array.

#### **Example:**
```R
multi_array[2, 3, 1] <- 99
print(multi_array[2, 3, 1])  # Output: 99
```

---

### **5. Performing Operations on Arrays**

R supports element-wise operations on arrays.

#### **Example:**
```R
# Add a scalar to all elements
new_array <- multi_array + 10
print(new_array)

# Multiply by a scalar
scaled_array <- multi_array * 2
print(scaled_array)
```

---

### **6. Applying Functions Across Dimensions**

Use the `apply()` function to apply a function along specific dimensions.

#### **Syntax:**
```R
apply(array, MARGIN, FUN)
```

- **MARGIN**: Dimension to apply the function (1 = rows, 2 = columns, etc.).
- **FUN**: The function to apply.

#### **Example:**
```R
# Calculate the sum of each row across layers
row_sums <- apply(multi_array, MARGIN = 1, FUN = sum)
print(row_sums)

# Calculate the mean of each column
col_means <- apply(multi_array, MARGIN = 2, FUN = mean)
print(col_means)
```

---

### **7. Combining Arrays**

You can combine arrays along new dimensions using `abind()` from the **abind** package.

#### **Example:**
```R
install.packages("abind")
library(abind)

array1 <- array(1:12, dim = c(3, 4))
array2 <- array(13:24, dim = c(3, 4))

combined <- abind(array1, array2, along = 3)
print(combined)
```

---

### **8. Checking Array Properties**

#### **Example:**
```R
# Dimensions of the array
print(dim(multi_array))

# Number of elements
print(length(multi_array))

# Check structure
str(multi_array)
```

---

### **9. Array vs Matrix**

- **Matrix**: Always 2D.
- **Array**: Can have 2D or more dimensions.

#### **Example of Conversion:**
```R
# Convert matrix to array
mat <- matrix(1:12, nrow = 3, ncol = 4)
converted_array <- array(mat, dim = c(3, 4, 1))
print(converted_array)
```

---

## **Summary**

| Task                      | Function/Method         |
|---------------------------|-------------------------|
| Create an array           | `array()`              |
| Access elements           | Indexing `[ , , ]`     |
| Modify elements           | Assignment             |
| Perform operations        | Arithmetic, `apply()`  |
| Combine arrays            | `abind()`              |
| Check properties          | `dim()`, `length()`, `str()` |

---

## **Your Turn!**

Experiment with arrays by creating your own multi-dimensional structures. Use `apply()` to perform calculations across dimensions. Arrays are a key tool for data organization and manipulation in R.

Stay tuned for more tutorials with **Codes with Pankaj**! 🚀
