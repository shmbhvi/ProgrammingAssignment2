## Put comments here that give an overall description of what your
 ## functions do
 
 ## Write a short comment describing this function
 

 # makeCacheMatrix function creates a special matrix object that can cache its inverse.
 
  
 makeCacheMatrix <- function(data,nrow,ncol) {  
   x <- matrix(data,nrow,ncol)                     # object initialized
   inv <- NULL                                     # initalise object
   setmatrix <-function(y,nrow,ncol) {             # set matrix
   x <<- y                                         # set matrix to take value for y from glbal enviornment 
    inv <<- NULL                                   # set inverse matrix to null 
  }
  
  getmatrix <- function() x                      # function to get matrix
  setinv <- function(solve) inv <<- solve        # function to set inverse matrix
  getinv <- function() inv                       # function to get inverse function value
  list(setmatrix=setmatrix,getmatrix=getmatrix,setinv=setinv,getinv=getinv) # new object by returning list
  }
  
 
 ## Write a short comment describing this function
 

 # Return a matrix that is the inverse of 'x'
 # cacheSolve function will create inverse matrix 
 # it will check if Inverse matrix already exists in cache 
 # this function will take makeCacheMatrix as input
 cacheSolve <- function(x,...) {
 inv <- x$getinv()
 if(!is.null(inv)) {                   # check if inverse matrix exist in cache
    message("getting cached data")
    return(inv)                           # return inverse matrix if exists in cache
  }
 data <- x$getmatrix()                 # if inverse matrix does not exist in cache
  inv <- solve(data)                    # solve function to inverse matrix
  x$setinv(inv)                         # set inverse matrix in cache
  inv                                   # return 
  }