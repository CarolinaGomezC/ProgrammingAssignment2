## Put comments here that give an overall description of what your
## functions do

##  This function creates a  "matrix" object 
## that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
set <- function(y){
i <- NULL  
}
get <- function()x
setmatrix <- function(solve) i <<- solve
getmatrix <- function() i
list(set = set, get = get,
     setmatrix = setmatrix,
     getmatrix = getmatrix)
}

## This function computes the inverse of the  "matrix" 
## returned by makeCacheMatrix above. If the inverse has 
## already been calculated (and the matrix has not changed),
## then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x = matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getmatrix()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  matrix <- x$get()
  i <- solve(matrix, ...)
  x$setmatrix(i)
 i
}
