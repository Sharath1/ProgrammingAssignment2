## Put comments here that give an overall description of what your
## functions do

## This function creates a set of functions to cache the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
      #inv object created to store inverse of matrix
      inv <- NULL
      set <- function(y)
      {
            x <<- y
            inv <<- NULL
      }
      get <- function()
      {
            #Return the matrix input
            x
      }
      setInverse<-function(inverse)
      {
            #Set the inv object with the inverse value
            inv<<- inverse
      }
      getInverse<-function()
      {
            #Returning the inv object
            inv
      }
      
      list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      
      inv <- x$getInverse()
      if(!is.null(inv))
      {
            message("Getting cached data")
            return(inv)
      }
      
      my_matrix <- x$get()
      inv <- solve(my_matrix,...)
      x$setInverse(inv)
      inv
}
