### Introduction

This is my personal Readme for programming assignment 2, not for the tutorial or introductory information provided by Prof. Peng

### Assignmet 2: Inverting an invertible matix 

I use the `<<-` operator which can be used to
assign a value to an object in an environment that is different from the
current environment. Below are two functions that are used to create a
special object that stores a numeric vector and caches its mean.

The first function, `makeCacheMatrix` creates a special "vector", which is
really a list containing a function to

1.  set the value of the matrix
2.  get the value of the matrix
3.  set the value of the inverse
4.  get the value of the inverse

<!-- -->

The second function, cacheSolve,  calculates the inverse of the special "vector"
created with the above function. However, it first checks to see if the
inverse  already exists. If so, it `gets the inverse from the
cache and skips the computation. Otherwise, it calculates the inverse of
the data and puts it in the cache via the `setinv`
function.


Computing the inverse of a square matrix is done with the `solve`
function in R. For example, if `X` is a square invertible matrix, then
`solve(X)` returns its inverse.

For this assignment, I assume that the matrix supplied is always
invertible.

In order to complete this assignment, you must do the following:

1.  Fork the GitHub repository containing the stub R files at
    [https://github.com/rdpeng/ProgrammingAssignment2](https://github.com/rdpeng/ProgrammingAssignment2)
    to create a copy under your own account.
2.  Clone your forked GitHub repository to your computer so that you can
    edit the files locally on your own machine.
3.  Edit the R file contained in the git repository and place your
    solution in that file (please do not rename the file).
4.  Commit your completed R file into YOUR git repository and push your
    git branch to the GitHub repository under your account.
5.  Submit to Coursera the URL to your GitHub repository that contains
    the completed R code for the assignment.

### Grading

This assignment will be graded via peer assessment.
