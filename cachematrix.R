## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inverse1<-NULL
set<-function(y){
  x<<-y
  inverse1<<-NULL
}
 get<-function()x
 setInverse<-function(inverse)inverse1<<-inverse
 getInverse<-function()inverse1
 list(set=set,
      get=get,
      setInverse=setInverse,
      getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
      inverse1<-x$getInverse() ## Return a matrix that is the inverse of 'x'
      if(!is.null(inverse1)) {
        message("getting cached data")
        return(inverse1)
      }
      matrix1 <- x$get()
      inverse1 <- solve(matrix1, ...)
      x$setInverse(inverse1)
      inverse1
}
      
