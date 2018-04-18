## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
    #initialize Cached object to null
    cachedInverseMatrix <- NULL
    
    set <- function(y) {
      x <<- y
      cachedInverseMatrix <<- NULL
    }
    get <- function() x
    
    setIMatrix <- function(i) cachedInverseMatrix <<- i
    
    getIMatrix <- function() cachedInverseMatrix
    
    list(set = set, get = get,
         setIMatrix = setIMatrix,
         getIMatrix = getIMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  im <- x$getIMatrix()
  
  if(!is.null(im)) {
    message("getting cached data")
    return(im)
  }
  
  matrix <- x$get()
  im <- solve(matrix, ...)
  x$setIMatrix(im)
  im
}
