## The functions in this file create and cache the inverse of a given matrix.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  dat <- NULL
  set <- function(y) {
    x <<- y
    dat <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) dat <<- inverse
  getinverse <- function() dat
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  dat <- x$getinverse()
  if(!is.null(dat)) {
    message("getting cached data")
    return(dat)
  }
  data <- x$get()
  dat <- solve(data)
  x$setinverse(dat)
  dat
}
