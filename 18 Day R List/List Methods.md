### **List of Key Methods for Working with Lists in R**  
Welcome to **Codes With Pankaj**! Below is a detailed guide to the most commonly used methods for handling lists in R, with examples to help you understand each one.

---

### **1. `length()`**  
The `length()` function returns the number of elements in a list.

#### Example:
```R
my_list <- list(name = "Pankaj", age = 25, scores = c(88, 90, 78))
length(my_list)
```
#### Output:
```
[1] 3
```

---

### **2. `names()`**  
The `names()` function is used to get or set the names of list elements.

#### Example: Getting Names
```R
names(my_list)
```
#### Output:
```
[1] "name" "age" "scores"
```

#### Example: Setting Names
```R
names(my_list) <- c("Name", "Age", "ExamScores")
print(my_list)
```
#### Output:
```
$Name
[1] "Pankaj"

$Age
[1] 25

$ExamScores
[1] 88 90 78
```

---

### **3. `unlist()`**  
The `unlist()` function converts a list into a vector by flattening its structure.

#### Example:
```R
flat_vector <- unlist(my_list)
print(flat_vector)
```
#### Output:
```
   Name       Age ExamScores1 ExamScores2 ExamScores3 
 "Pankaj"       25        88        90        78 
```

---

### **4. `lapply()`**  
The `lapply()` function applies a function to each element of a list and returns the results as a list.

#### Example:
```R
score_list <- list(10, 20, 30)
doubled_scores <- lapply(score_list, function(x) x * 2)
print(doubled_scores)
```
#### Output:
```
[[1]]
[1] 20

[[2]]
[1] 40

[[3]]
[1] 60
```

---

### **5. `sapply()`**  
The `sapply()` function is a simplified version of `lapply()`. It tries to return a vector or matrix instead of a list.

#### Example:
```R
score_list <- list(c(10, 20), c(30, 40))
sums <- sapply(score_list, sum)
print(sums)
```
#### Output:
```
[1] 30 70
```

---

### **6. `append()`**  
The `append()` function adds elements to a list.

#### Example:
```R
my_list <- list(name = "Pankaj", age = 25)
my_list <- append(my_list, list(hobby = "Coding"))
print(my_list)
```
#### Output:
```
$name
[1] "Pankaj"

$age
[1] 25

$hobby
[1] "Coding"
```

---

### **7. `str()`**  
The `str()` function provides the structure of a list, making it easier to inspect complex lists.

#### Example:
```R
str(my_list)
```
#### Output:
```
List of 3
 $ name : chr "Pankaj"
 $ age  : num 25
 $ hobby: chr "Coding"
```

---

### **8. `is.list()`**  
The `is.list()` function checks if an object is a list and returns `TRUE` or `FALSE`.

#### Example:
```R
is_list <- is.list(my_list)
print(is_list)
```
#### Output:
```
[1] TRUE
```

---

### **9. `as.list()`**  
The `as.list()` function converts other objects (e.g., vectors) into a list.

#### Example:
```R
vec <- c(1, 2, 3)
list_from_vec <- as.list(vec)
print(list_from_vec)
```
#### Output:
```
[[1]]
[1] 1

[[2]]
[1] 2

[[3]]
[1] 3
```

---

### **10. `rapply()`**  
The `rapply()` function applies a function recursively to each element of a list.

#### Example:
```R
nested_list <- list(a = list(1, 2), b = list(3, 4))
result <- rapply(nested_list, function(x) x * 2, how = "list")
print(result)
```
#### Output:
```
$a
$a[[1]]
[1] 2

$a[[2]]
[1] 4

$b
$b[[1]]
[1] 6

$b[[2]]
[1] 8
```

---

### **11. `duplicated()`**  
The `duplicated()` function checks for duplicate elements in a list.

#### Example:
```R
my_list <- list(1, 2, 3, 2, 1)
duplicates <- duplicated(my_list)
print(duplicates)
```
#### Output:
```
[1] FALSE FALSE FALSE  TRUE  TRUE
```

---

### **12. `rev()`**  
The `rev()` function reverses the order of elements in a list.

#### Example:
```R
my_list <- list(1, 2, 3, 4)
reversed_list <- rev(my_list)
print(reversed_list)
```
#### Output:
```
[[1]]
[1] 4

[[2]]
[1] 3

[[3]]
[1] 2

[[4]]
[1] 1
```

---

### **13. `do.call()`**  
The `do.call()` function executes a function using a list of arguments.

#### Example:
```R
args_list <- list(1, 2, 3)
sum_result <- do.call(sum, args_list)
print(sum_result)
```
#### Output:
```
[1] 6
```

---

### **14. `Filter()`**  
The `Filter()` function applies a condition to filter elements from a list.

#### Example:
```R
my_list <- list(1, 2, 3, 4, 5)
filtered_list <- Filter(function(x) x > 3, my_list)
print(filtered_list)
```
#### Output:
```
[[1]]
[1] 4

[[2]]
[1] 5
```

---

### **15. `Map()`**  
The `Map()` function applies a function to corresponding elements of multiple lists.

#### Example:
```R
list1 <- list(1, 2, 3)
list2 <- list(4, 5, 6)
result <- Map(function(x, y) x + y, list1, list2)
print(result)
```
#### Output:
```
[[1]]
[1] 5

[[2]]
[1] 7

[[3]]
[1] 9
```

---

### **Summary of Methods**

| **Function** | **Description**                  |
|--------------|----------------------------------|
| `length()`   | Returns the number of elements. |
| `names()`    | Gets or sets the names.         |
| `unlist()`   | Flattens a list to a vector.    |
| `lapply()`   | Applies a function to elements. |
| `sapply()`   | Simplified version of `lapply`. |
| `append()`   | Adds elements to a list.        |
| `str()`      | Displays list structure.        |
| `is.list()`  | Checks if an object is a list.  |
| `as.list()`  | Converts an object to a list.   |
| `rapply()`   | Recursive version of `lapply`.  |
| `duplicated()` | Finds duplicate elements.    |
| `rev()`      | Reverses list elements.         |
| `do.call()`  | Executes a function on a list.  |
| `Filter()`   | Filters elements by condition.  |
| `Map()`      | Applies a function to multiple lists. |

---

With these methods and examples, you’re equipped to handle lists effectively in R. Try them out and take your skills to the next level with **Codes With Pankaj**! 🚀
