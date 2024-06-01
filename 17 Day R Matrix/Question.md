
### Questions

1. **Basic Matrix Creation**
    - Create a 5x2 matrix with numbers from 1 to 10. Display the matrix.

    ```R
    # Your code here
    ```

2. **Matrix by Rows**
    - Create a 4x3 matrix with numbers from 1 to 12, filled by rows. Display the matrix.

    ```R
    # Your code here
    ```

3. **Named Matrix**
    - Create a 3x3 matrix with numbers from 1 to 9. Name the rows as "R1", "R2", "R3" and the columns as "C1", "C2", "C3". Display the matrix.

    ```R
    # Your code here
    ```

4. **Accessing Matrix Elements**
    - Given the following matrix:

    ```R
    access_matrix <- matrix(1:9, nrow = 3, ncol = 3)
    ```

    Write code to access the element in the 3rd row and 2nd column.

    ```R
    # Your code here
    ```

5. **Matrix Addition**
    - Create two 2x2 matrices:

    ```R
    matrix_a <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)
    matrix_b <- matrix(c(4, 3, 2, 1), nrow = 2, ncol = 2)
    ```

    Add these two matrices together and display the result.

    ```R
    # Your code here
    ```

6. **Matrix Multiplication**
    - Given the matrices:

    ```R
    matrix_x <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)
    matrix_y <- matrix(c(5, 6, 7, 8), nrow = 2, ncol = 2)
    ```

    Multiply these two matrices together and display the result.

    ```R
    # Your code here
    ```

7. **Transpose of a Matrix**
    - Create a 2x3 matrix with numbers from 1 to 6. Transpose the matrix and display the result.

    ```R
    # Your code here
    ```

8. **Element-wise Operations**
    - Create a 3x3 matrix with numbers from 1 to 9. Multiply each element by 2 and display the resulting matrix.

    ```R
    # Your code here
    ```

9. **Combining Matrices**
    - Create two matrices:

    ```R
    mat1 <- matrix(1:4, nrow = 2)
    mat2 <- matrix(5:8, nrow = 2)
    ```

    Combine these matrices by columns and display the resulting matrix.

    ```R
    # Your code here
    ```

10. **Matrix Determinant (Advanced)**
    - Create a 2x2 matrix and calculate its determinant.

    ```R
    det_matrix <- matrix(c(4, 2, 3, 1), nrow = 2)
    # Your code here
    ```

### Answers

Below are the solutions to the above questions:

1. **Basic Matrix Creation**

    ```R
    matrix_5x2 <- matrix(1:10, nrow = 5, ncol = 2)
    print(matrix_5x2)
    ```

2. **Matrix by Rows**

    ```R
    matrix_4x3_byrow <- matrix(1:12, nrow = 4, ncol = 3, byrow = TRUE)
    print(matrix_4x3_byrow)
    ```

3. **Named Matrix**

    ```R
    row_names <- c("R1", "R2", "R3")
    col_names <- c("C1", "C2", "C3")
    named_matrix <- matrix(1:9, nrow = 3, ncol = 3, dimnames = list(row_names, col_names))
    print(named_matrix)
    ```

4. **Accessing Matrix Elements**

    ```R
    element <- access_matrix[3, 2]
    print(element)  # Output: 8
    ```

5. **Matrix Addition**

    ```R
    sum_matrix <- matrix_a + matrix_b
    print(sum_matrix)
    ```

6. **Matrix Multiplication**

    ```R
    product_matrix <- matrix_x %*% matrix_y
    print(product_matrix)
    ```

7. **Transpose of a Matrix**

    ```R
    matrix_2x3 <- matrix(1:6, nrow = 2, ncol = 3)
    transposed_matrix <- t(matrix_2x3)
    print(transposed_matrix)
    ```

8. **Element-wise Operations**

    ```R
    matrix_3x3 <- matrix(1:9, nrow = 3, ncol = 3)
    multiplied_matrix <- matrix_3x3 * 2
    print(multiplied_matrix)
    ```

9. **Combining Matrices**

    ```R
    combined_matrix <- cbind(mat1, mat2)
    print(combined_matrix)
    ```

10. **Matrix Determinant (Advanced)**

    ```R
    determinant <- det(det_matrix)
    print(determinant)
    ```

