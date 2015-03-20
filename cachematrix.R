## The first function, "makeCacheMatrix" creates a special "matrix" object that can cache its inverse.
## The second, "cacheSolve" computes the inverse of the special "matrix" returned by makeCacheMatrix above.

## This function calculates the inverse of the matrix x, and caches the inerse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) inv <<- solve
  getinverse <- function() inv
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## This function checks the cache for the inverse, if it is not found
## then it calculates the inverse and returns it.

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)){
    message("getting cached inverse")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}
