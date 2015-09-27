## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	    j <- matrix()
            set <- function(y) {
                    x <<- y
                    j <<- NULL
            }
            get <- function() x
            setinverse <- function(solve) j <<- solve
            getinverse <- function() j
            list(set = set, get = get,
                 setinverse = setinverse,
                 getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x,...) {
            j <- x$getinverse()
            if(is.na(j)) {
		data <- x$get()
            	j <- solve(data)
            	x$setinverse(j)
            	j	
            }
	    else{
		 message("getting cached data")
                    return(j)
		}
            
}
