## The following function creates a function for matrix inversion
# Initialize the inverse matrix  as NULL

# Initialising of the function 

# Initiatilisinng the inverse cache when the matrix is changed

# Returns the matrix and the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  # Initialize the inverse matrix  as NULL     
       inv <- NULL  # initialisint the function
       set <- function(y) {
              x <<- y
              inv <<- NULL  
       }
       # Returns the matrix
       get <- function() x  
       setInverse <- function(inverse) inv <<- inverse  # Cache the inverse
       getInverse <- function() inv  # Returns the cached inverse if it exists
    
# Return a list of the methods 
       list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}

## This function computes the inverse of the unique "matrix" returned by makeCacheMatrix above.

# Check if the inverse is already cached

# # If cached, return the cached inverse

# Return a matrix that is the inverse of 'x'

# compute the matrix and Returns the inverse matrix 

cacheSolve <- function(x, ...) {
       inv <- x$getInverse()   
# Check if the inverse is already cached
       if (!is.null(inv)) {  
        message("getting cached data")
        return(inv)
 ## Return a matrix that is the inverse of 'x'
              data <- x$get()  # Get the matrix
  # Compute the inverse  
              inv <- solve(data, ...)  
  # Cache the computed inverse
              x$setInverse(inv)  
    # Return the inverse
              inv  
}
