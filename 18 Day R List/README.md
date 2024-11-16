# **Tutorial: R List Basics with "Codes with Pankaj"**

Welcome to **Codes with Pankaj**, where we break down R programming concepts step by step! In this tutorial, we'll explore **R Lists**, one of the most versatile and powerful data structures in R.

---

## **What is an R List?**

An R **list** is a collection of elements that can be of different types (e.g., numbers, characters, vectors, data frames, etc.). Think of a list as a container that can hold various objects of different types and sizes.

### **Why Use Lists?**
- To group related data of different types.
- To store complex structures like models, functions, or other lists.

---

## **Step-by-Step Guide**

### **1. Creating a List**

A list is created using the `list()` function.

#### **Syntax:**
```R
list(element1, element2, ..., elementN)
```

#### **Example:**
```R
my_list <- list(
  name = "Pankaj",
  age = 28,
  hobbies = c("coding", "reading", "traveling")
)
print(my_list)
```

#### **Output:**
```
$name
[1] "Pankaj"

$age
[1] 28

$hobbies
[1] "coding"     "reading"    "traveling"
```

### **Explanation:**
- `name` is a **character** element.
- `age` is a **numeric** element.
- `hobbies` is a **vector** containing strings.

---

### **2. Accessing List Elements**

#### **Method 1: Using `$` Operator**
The `$` operator accesses elements by name.
```R
print(my_list$name)
# Output: "Pankaj"
```

#### **Method 2: Using Double Square Brackets `[[ ]]`**
Access elements by index or name.
```R
print(my_list[[2]])
# Output: 28
```

#### **Method 3: Using Single Square Brackets `[ ]`**
This returns a **sublist**.
```R
print(my_list[2])
# Output:
$age
[1] 28
```

### **Key Difference:**
- `[[ ]]` returns the actual element.
- `[ ]` returns a list containing the element.

---

### **3. Modifying a List**

You can update or add elements to a list.

#### **Example:**
```R
# Update an element
my_list$age <- 29
print(my_list$age)  # Output: 29

# Add a new element
my_list$profession <- "Data Scientist"
print(my_list$profession)  # Output: "Data Scientist"
```

---

### **4. Removing Elements**

To remove elements, set them to `NULL`.

#### **Example:**
```R
my_list$profession <- NULL
print(my_list)
# The "profession" element will be removed.
```

---

### **5. Applying Functions to Lists**

Use `lapply()` and `sapply()` to apply functions to list elements.

#### **lapply() Example:**
```R
numbers <- list(a = 1:5, b = 6:10)
result <- lapply(numbers, sum)
print(result)
# Output: List with sums of each vector
```

#### **sapply() Example:**
```R
result <- sapply(numbers, sum)
print(result)
# Output: A simplified vector of sums
```

---

### **6. Combining Lists**

Use the `c()` function to combine lists.

#### **Example:**
```R
list1 <- list(a = 1, b = 2)
list2 <- list(c = 3, d = 4)
combined <- c(list1, list2)
print(combined)
```

---

### **7. Nested Lists**

Lists can contain other lists!

#### **Example:**
```R
nested_list <- list(
  personal = list(name = "Pankaj", age = 28),
  professional = list(title = "Data Scientist", experience = 5)
)
print(nested_list)
```

---

### **8. Converting a List to a Vector**

If all list elements are of the same type, use `unlist()`.

#### **Example:**
```R
simple_list <- list(1, 2, 3, 4)
vector <- unlist(simple_list)
print(vector)
# Output: [1] 1 2 3 4
```

---

### **9. Checking List Properties**

#### **Length of a List:**
```R
print(length(my_list))
# Output: Number of elements in the list
```

#### **Type of Each Element:**
```R
types <- sapply(my_list, class)
print(types)
```

---

### **10. Advanced: Using `str()` for Structure**
The `str()` function gives a compact view of the list structure.

#### **Example:**
```R
str(my_list)
```

---

## **Summary**

| Task                       | Function/Method       |
|----------------------------|-----------------------|
| Create a list              | `list()`             |
| Access elements            | `$`, `[[ ]]`, `[ ]`  |
| Modify/add elements        | Assign values        |
| Remove elements            | Assign `NULL`        |
| Apply functions            | `lapply()`, `sapply()` |
| Combine lists              | `c()`                |
| Nested lists               | Create lists inside lists |
| Convert to vector          | `unlist()`           |

---

## **Your Turn!**

Try creating your own lists with different types of data. Play around with accessing and modifying elements to see how flexible and powerful lists can be!

Stay tuned for more tutorials with **Codes with Pankaj**! 🚀

