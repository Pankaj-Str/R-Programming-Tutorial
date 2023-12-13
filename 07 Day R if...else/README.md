# R if..else

In R, the `if...else` statement is used for conditional execution of code. It allows you to specify a condition, and based on whether that condition is `TRUE` or `FALSE`, different blocks of code will be executed. The basic syntax of the `if...else` statement in R is as follows:

```R
if (condition) {
  # Code to execute if the condition is TRUE
} else {
  # Code to execute if the condition is FALSE
}
```

Here's an example of how to use `if...else` in R:

```R
# Example 1: Simple if...else
x <- 10

if (x > 5) {
  cat("x is greater than 5.\n")
} else {
  cat("x is not greater than 5.\n")
}

# Example 2: Nested if...else
y <- 3

if (y > 5) {
  cat("y is greater than 5.\n")
} else if (y == 5) {
  cat("y is equal to 5.\n")
} else {
  cat("y is less than 5.\n")
}
```

In the first example, we check if the value of `x` is greater than 5. If it is, we print a message indicating that `x` is greater than 5. Otherwise, we print a message indicating that it's not.

In the second example, we use a nested `if...else` structure to check different conditions for the value of `y`. We first check if `y` is greater than 5, then if it's equal to 5, and finally, if neither of these conditions is met, we print a message indicating that `y` is less than 5.

You can also use `if...else` statements to control the flow of your program and make decisions based on conditions.

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
