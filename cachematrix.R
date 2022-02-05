## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
library(MASS)
makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL  ## initializing
        set <- function(z){
                x<<-z
                inv<<-NULL
        }
get <- function()x  ## It will give matrix of x
setinv <- function(inverse)inv<<-inverse
getinv <- function(){
        inner <- ginv(x)
        inver%%x  ## to get inverse of a matrix x
}
list(set = set, get = get,
setinv = setinv,
getinv =getinv)
}



cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
{
        inv <- x$getinv()
        if(!is.null(inv)){   ## To check NULL inverse
                message("cache data")
                return(inv)  ## To return inverse value
        }
        data <- x$get()
        inv <- solve(data,...)
        x$setinv(inv)
        inv  ## Returns a inverse matrrix of x
}