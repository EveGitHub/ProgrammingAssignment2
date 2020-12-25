## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## create empty matrix and assign to x, set null to inverse, set value of matrix, get value of matrix, set inverse matrix, get inverse matrix, make list
makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) inverse <<- solve
  getinverse <- function() inverse
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
## get the inverse value, check if it's null, if not return cached value, if it is then get data (matrix), inverse it using solve, set inverse value (cache) and return
cacheSolve <- function(x, ...) {
  inverse <- x$getinverse()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data, ...)
  x$setinverse(inverse)
  inverse
        ## Return a matrix that is the inverse of 'x'
}
