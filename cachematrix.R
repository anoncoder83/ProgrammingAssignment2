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


 