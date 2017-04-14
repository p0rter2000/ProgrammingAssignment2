## Creates a special matrix which can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(solve) inv <<- solve
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}

## Calculates the inverse of a matrix that was created with 
##    the makeCacheMatrix function. It first checks to see
##    if the inversve has been calculated already. If it has
##    the function retrieves the inverse from cache and does
##    not compute anything. Otherwise, the function calculates
##    the inverse of the matrix and set the inverse in cache
##    with the setinv function

cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(mtrx, ...)
  x$setinv(inv)
  m
}




