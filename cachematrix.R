## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## Initialize the inverse property
    i <- NULL
set <- function( matrix ) {
            m <<- matrix
            i <<- NULL
    }
    ## Method the get the matrix
    get <- function() {
    	## Return the matrix
    	m
    }
## Way to set the inverse of the matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }

    ## Way to get the inverse of the matrix
    getInverse <- function() {
        ## Back the inverse property
        i
    }
## Back a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}
## Compute the inverse of the unique matrix back by "makeCacheMatrix"
## Back to a matrix  “m”
    m <- x$getInverse()
    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }
    ## Compute the inverse via matrix multiplication
    m <- solve(data) %*% data
## Set the inverse to the object
    x$setInverse(m)
## Coming back the matrix
    m
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## @x: output of makeCacheMatrix()
        ## return: inverse of the original matrix input to makeCacheMatrix()
        
        inv = x$getinv()
        
        # if the inverse has already been calculated
        if (!is.null(inv)){
                # get it from the cache and skips the computation. 
                message("getting cached data")
                return(inv)
        }
        
        # otherwise, calculates the inverse 
        mat.data = x$get()
        inv = solve(mat.data, ...)
        
        # sets the value of the inverse in the cache via the setinv function.
        x$setinv(inv)
        
        return(inv)
}
