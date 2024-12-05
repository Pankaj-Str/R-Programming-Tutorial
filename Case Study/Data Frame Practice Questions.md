### **R Data Frame Practice Questions**

#### 1. Creating a Data Frame
- Create a data frame named `student_data` with the following columns:
  - `Name`: Character vector with values: `"Alice"`, `"Bob"`, `"Charlie"`
  - `Age`: Numeric vector with values: `22`, `24`, `23`
  - `Grade`: Factor vector with values: `"A"`, `"B"`, `"A"`
  
#### 2. Accessing Elements in a Data Frame
Using the `student_data` data frame:
1. Extract the `Name` column.
2. Access the value in the second row and third column.
3. Extract rows where the grade is `"A"`.

#### 3. Adding and Modifying Columns
1. Add a new column `Subject` with values: `"Math"`, `"Science"`, `"History"`.
2. Modify the `Age` column by adding 1 to each value.

#### 4. Subsetting a Data Frame
1. Display only the `Name` and `Grade` columns.
2. Filter rows where `Age` is greater than 22.

#### 5. Summary and Structure
1. Use the `str()` function to view the structure of the `student_data`.
2. Use the `summary()` function to get a summary of the data frame.

#### 6. Sorting and Reordering
1. Sort the `student_data` by the `Age` column in ascending order.
2. Reorder the rows by `Grade` in descending order.

#### 7. Merging and Binding Data Frames
1. Create another data frame named `new_data` with the following columns:
   - `Name`: `"David"`, `"Eva"`
   - `Age`: `25`, `23`
   - `Grade`: `"B"`, `"A"`
2. Combine `student_data` and `new_data` using `rbind()`.

#### 8. Removing Columns and Rows
1. Remove the `Subject` column from the `student_data`.
2. Delete the first row from the data frame.

#### 9. Exporting and Importing Data Frames
1. Save the `student_data` as a CSV file named `student_data.csv` using `write.csv()`.
2. Read the file back into R and store it in a variable called `imported_data`.

#### 10. Bonus Challenge
- Create a data frame `sales_data` with the following columns:
  - `Month`: `"Jan"`, `"Feb"`, `"Mar"`
  - `Sales`: `1200`, `1500`, `1800`
  - `Profit`: `200`, `300`, `400`
- Add a new column `Profit_Percentage` which is calculated as `(Profit / Sales) * 100`.
