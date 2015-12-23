## Put comments here that give an overall description of what your
## functions do

## Creates a matrix that can cache its inverse. The new type of matrix supports 
## set, get of the matrix and also setInverse, getInverse of the matrix.
## Input : an invertible matrix
## Output : a list consisting of get, set, getInverse, setInverse functions

makeCacheMatrix <- function(x = matrix()) {
    invMatrix <- NULL
    get <- function() x
    set <- functin(y) {
        x <<- y
        invMatrix <<- NULL
    }
    setInverse <- function(y) {
        invMatrix <<- y
    }
    getInverse <- function(y) invMatrix
    
    list (set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## The function returns inverse of of a matrix. 
## If the inverse of the matrix is already in the cache, cached matrix is returned
## If invserse is not in the cache, inverse is computed, saved in cache before
##    returning it. 
## Input: an invertible matrix
## Outout: inverse of the matrix

cacheSolve <- function(x, ...) {
    invMatrix <- x$getInverse()
    if (is.null(invMatrix)) {
        ## get matrix, compute inverse, cache it
        invMatrix <- solve(x$get())
        x$setInverse(invMatrix)
    } else {
        message("Getting cached inverse of the matrix")
    }
    invMatrix
}
