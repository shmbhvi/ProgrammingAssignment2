## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
setinverse <- function(inverse) i <<- inverse
            getinverse <- function() i
i <- solve(x)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		i = x$makeCacheMatrix()
		if(!is.null(i)) {
                    message("getting cached data")
                    return(i)
            }
            data <- x$getinverse()
            i <- makeCacheMatrix(data, ...)
            x$setinverse(i)
            i
}
