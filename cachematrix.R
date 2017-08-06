## This code will cache the calculation for inverse of a matrix ## 

## makeCacheMatrix function will create a vector (list) to get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
    #Setting the value of vector   
  set <- function(y) {  
    x <<- y
    m <<- NULL
        #getting the value of vector  
          get <- function() x
          #setting the value
  setinverse <- function(solve) m <<-inverse
          #getting the value of inverse of the vector
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## The following vector CacheSolve will calculate the inverse of the vector created by above function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m   
        
        
}
