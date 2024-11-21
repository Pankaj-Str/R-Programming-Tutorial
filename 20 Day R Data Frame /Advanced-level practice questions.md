# Advanced-level practice questions

---

### 1. **Data Transformation and Filtering**
You are given a data frame `df` with columns: `ID`, `Name`, `Age`, `Salary`, and `Department`. Perform the following tasks:  
- Filter rows where `Age` is greater than 30 and `Salary` is above the median salary.  
- Add a new column `Bonus` which is 10% of the `Salary`.  
- Arrange the resulting data frame in descending order of `Bonus`.

---

### 2. **Merging and Joining Data Frames**
Given two data frames:
```R
df1 <- data.frame(ID = c(1, 2, 3), Name = c("Alice", "Bob", "Charlie"), Age = c(25, 30, 35))
df2 <- data.frame(ID = c(2, 3, 4), Department = c("HR", "IT", "Finance"), Salary = c(70000, 80000, 90000))
```
- Perform an **inner join**, **left join**, and **full join** on `ID`.
- Add a column `Age_Group` to the joined data frame using the following conditions:
  - `< 30`: "Young"
  - `30-40`: "Mid"
  - `> 40`: "Senior"

---

### 3. **Group Summaries and Aggregation**
Using a data frame `employees` with columns `EmployeeID`, `Department`, `Salary`, and `Experience` (in years):  
- Calculate the average `Salary` and `Experience` per `Department`.  
- Identify the department with the highest average salary.  
- Add a column `Experience_Level` categorizing employees as `"Junior"` (<5 years), `"Mid-Level"` (5-10 years), or `"Senior"` (>10 years).

---

### 4. **Data Manipulation with apply Functions**
You have a data frame `grades` where each row corresponds to a student, and columns `Math`, `Science`, `English` contain their scores:  
- Use `apply()` to calculate the average score for each student.  
- Identify students who scored below 40 in any subject and return their names.  
- Create a new column `Status` where students are marked as `"Pass"` if their average score is ≥50; otherwise `"Fail"`.

---

### 5. **Handling Missing Data and Imputation**
You are given a data frame `sales` with columns `Region`, `Sales`, and `Profit`. Some values in `Sales` and `Profit` are missing (`NA`).  
- Identify the rows with missing data.  
- Replace missing values in `Sales` with the median of the column and in `Profit` with the mean of the column.  
- Create a summary showing total `Sales` and `Profit` per `Region` after imputation.

---

