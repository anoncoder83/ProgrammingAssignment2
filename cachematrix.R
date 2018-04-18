## The two functions makeCacheMatrix and cacheSolve to cache inverse of a matrix

## How to use/call the two functions
## Example
## > p <- makeCacheMatrix(matrix(c(1,2,3,4),2,2))
## > cacheSolve(p)
## > p$set(matrix(c(5,2,3,4),2,2))
## > p$getIMatrix()
## > cacheSolve(p)
##

## makeCacheMatrix holds a object which is inverse of a matrix provided. once the matrix is set
## need to call cacheSolve() on object of below function so that a valid inverse matrix is set.

makeCacheMatrix <- function(x = matrix()) {
  
    #Initialize Cached object to null
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


## cacheSolve uses solve() function to get inverse of the matrix provided in object 
## of makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  im <- x$getIMatrix()
  
  if(!is.null(im)) {
    message("getting cached data")
    return(im)
  }
  
  matrix <- x$get()
  
  # Call solve() to get inverse of matrix
  im <- solve(matrix, ...)
  x$setIMatrix(im)
  im
}
