## Put comments here that give an overall description of what your
## functions do
Cache the inverse of a matrix to avoid repeatedly computing it.

## Write a short comment describing this function
Caches its inverse by creating a special "matrix" object, aka a list containing a funtion to set and get the value of the matrix, and to set and get the value of the inverse.
makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y){
	x <<- y
	inv <<- NULL
} 
get <- function(x)
setinverse <-function(inverse) inv <<- inverse
getinverse <-function() inv
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}

## Write a short comment describing this function
Compute the inverse of the special "matrix" from the function above. acheSolve will skip the computation and retrieve the inverse if it has already been computed.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getinverse()
if(!is.null(inv)){
	message("getting cached data")
	return(inv)
	}
	data <- x$get()
	inv <- solve(data,...)
	x$setinverse(inv)
	inv
}
