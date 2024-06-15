# R if...else Statements Tutorial

Welcome to www.codeswithpankaj.com! In this tutorial, we will explore the `if...else` statement in R, which is used for decision-making in your programs. Understanding how to use `if...else` statements is crucial for controlling the flow of your code based on conditions.

## What is an `if...else` Statement?

An `if...else` statement evaluates a condition and executes specific blocks of code based on whether the condition is `TRUE` or `FALSE`. It allows your program to make decisions dynamically during runtime.

### Syntax of `if...else` Statement

The basic syntax of an `if...else` statement in R is as follows:

```R
if (condition) {
  # Code to execute if condition is TRUE
} else {
  # Code to execute if condition is FALSE
}
```

### Example: Using `if...else` Statement

Let's consider a simple example where we want to check if a number is greater than zero and print a message accordingly:

```R
# Example of if...else statement
x <- 10

if (x > 0) {
  print("x is positive")
} else {
  print("x is not positive")
}
```

In this example:
- `x` is assigned the value `10`.
- The `if` statement checks if `x` is greater than `0`.
- Since `10` is greater than `0`, the message `"x is positive"` is printed.

### Nested `if...else` Statements

You can also nest `if...else` statements to handle multiple conditions.

```R
# Nested if...else example
grade <- 85

if (grade >= 90) {
  print("Grade is A")
} else if (grade >= 80) {
  print("Grade is B")
} else if (grade >= 70) {
  print("Grade is C")
} else {
  print("Grade is D")
}
```

In this example:
- `grade` is `85`.
- The first `if` condition checks if `grade` is greater than or equal to `90`, printing `"Grade is A"` if true.
- If not, it checks the next condition (`grade >= 80`) and so on until it finds a true condition or reaches the `else` block.

### Vectorized `if...else`

R also supports vectorized `if...else` statements using the `ifelse()` function, which can apply conditions element-wise to vectors.

```R
# Vectorized ifelse example
marks <- c(75, 85, 60, 95, 70)

result <- ifelse(marks >= 80, "Pass", "Fail")
print(result)
```

In this example:
- `marks` is a vector of numeric values.
- `ifelse()` checks each element in `marks`. If an element is `>= 80`, it returns `"Pass"`, otherwise `"Fail"`.

### Using `if...else` with Functions

You can also use `if...else` statements within functions to control the flow of operations.

```R
# Using if...else in a function
is_even <- function(x) {
  if (x %% 2 == 0) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

# Test the function
print(is_even(10))   # Output: TRUE
print(is_even(7))    # Output: FALSE
```

## Conclusion

In this tutorial, we covered the `if...else` statement in R, including its syntax, examples, nested usage, vectorized form (`ifelse()`), and integrating it within functions. Mastering `if...else` statements is essential for implementing conditional logic and controlling program flow based on dynamic conditions.

For more tutorials and guides, visit [www.codeswithpankaj.com](http://www.codeswithpankaj.com).

---




## Question - 

1. Write a  Program to Check Whether a Number is Even or Odd.?
   
   ```yaml
   Enter Number to Find Even or odd = 3
    
   -- Your Number 3 is Odd 
   ```
2. Write a  Program to Check Whether an Alphabet is Vowel or Consonant ?

   ```yaml
   Enter Alphabet : A
    
   -- A is Vowel 
   ```
3. Write a  Program to Find the Largest Among Three Numbers ?
    
    ```yaml
    Enter Number 1 : 100
    Enter Number 2 : 300
    Enter Number 3 : 400 
    -- Number 300 is Largest 
    ```

4. Write a  Program to Check Leap Year ?

    ```yaml
   Enter Year : 2023 

   -- 2023 is not Leap Year 
   ```

5. Write a program to find Grade ?
   
   ```yaml
   Example : Grading System 
   80 - 100 = Grade A
   60 - 80 = Grade B
   40 - 60 = Grade C
   30 - 40 = Grade D
   0  - 30 Grade F

   ```

6. Find Age ?
   
   ```yaml
   -- Date of birth Section 

   Enter Your Birth Year : 1992
   Enter Your Birth Month : 4
   Enter Your Birth Day : 16

   -- Current Date

   Enter Your Current Year : 2023
   Enter Your Current Month : 7
   Enter Your Current Day : 26 

   -- output
   
   30 years 3 months 10 days
   or 363 months 10 days
   or 1579 weeks 5 days
   or 11,058 days
   or 265,392 hours
   
   ```

7. Password Checker 
Example : 
```yaml
   Set your password :
   p4n@in
   Enter your Password : 
   p4n
   wrong password ... try 2 more time out of 2
   p4n@
   wrong password ... try 1 more time 1
   p4n@34
   wrong password ... try 0 more time 0
   note : user select right password
   then start MCQ EXAM...
   
    
   1. Who invented Java Programming?
   1. ) Guido van Rossum
   2. ) James Gosling
   3. ) Dennis Ritchie
   4. ) Bjarne Stroustrup
   
   Select Answer 2
   
   wrong answer [ Try Next year ] 
   
   Note :if select Right Answer 
   ask 2nd Question ...
   
   2. Which component is used to compile, debug and execute the java programs?
   1. ) JRE
   2. ) JIT
   3. ) JDK
   4. ) JVM
   
   Select Answer 2 ... con..
```    

8. Student Report Card System
```Yaml
---- Input Section
Enter your name : Joy
Enter Your Roll Number : A1023

Enter Your JAVA Marks : 50
Enter Your C++ Marks : 20
Enter Your go Marks : 25
Enter Your Ruby Marks : 96
Enter Your C# Marks : 70
Enter Your Python Marks : 65

---- Output Section
JAVA = 50/100 
C++ = 20/100 F
go = 25/100 F
Ruby = 96/100
C# = 70/100
Python = 65/100

Total = 326/600
per = 54% FAIL
IF PASS
Grading System 
80 - 100 = Grade A
60 - 80 = Grade B
40 - 60 = Grade C
30 - 40 = Grade D
```

9 . MCQ with Report Card :

7. Password Checker 
Example : 
```yaml

  Enter Your Name :
  joy
  Enter Your Roll Number :
  A009A
  then start MCQ EXAM...
  
   1. Who invented Java Programming?
   1. ) Guido van Rossum
   2. ) James Gosling
   3. ) Dennis Ritchie
   4. ) Bjarne Stroustrup
   
   Select Answer 2
   
   wrong answer (do not add marks)
   if select right answer : add 20 marks
   Note :if select Right Answer 
   ask 2nd Question ...
   
   2. Which component is used to compile, debug and execute the java programs?
   1. ) JRE
   2. ) JIT
   3. ) JDK
   4. ) JVM
   
   Select Answer 2 ... con..

  Ask - 10 total Question
  and print total ?
```    



