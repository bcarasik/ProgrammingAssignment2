## Bob Carasik, Coursera R course assignment 2
##  
 
## makeCacheMatrix creates get and set for both the 
## given matrix and its inverse (transposition)

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL;
  setmatrix <- function( inputmatrix) {
    globalmatrix <<-inputmatrix
    inv <<-NULL 
  }
  getmatrix <- function () globalmatrix
  setinv <- function(x) inv <<- x
  getinv <- function () inv
  ## return list of functions
  list (setmatrix = setmatrix,
        getmatrix= getmatrix,
        getinv = getinv,
        setinv = setinv) 
}


## Write a short comment describing this function
##  this function calculates the inverse once and stores the result for multiple retrieval
##  first will implement for transposistion to test the caching
##  Get the inverse matrix of matrix x:
##   > solve(x) %*% x

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if( !is.null(inv) ) {
   ## message("getting the cached inverted matrix")
    inv  
    return(inv)
  }
  message("creating the inverted matrix")
  data <- x$getmatrix()
  inv <- solve(data)
  ## use solve() to invert, use t() to transpose
  x$setinv(inv)
##  inv
}