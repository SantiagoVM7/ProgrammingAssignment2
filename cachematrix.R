## Put comments here that give an overall description of what your
## functions do

## This function will create a special matrix that is able to cache its inverse 

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL ## Here I am initializing the inverse property 
        setMatrix <- function(matrix){ #Here I am coding the method to set the matrix 
                m <<- matrix
                i <<- NULL
        }
        
        getMatrix <- function(){ ##establishing method to get matrix
                m ##returning the matrix
        }
        
        setInverse <- function(inverse){ ##defining method to set the inverse of the matrix
                i <<- inverse
        }
        
        getInverse <- function(){ ##getting inverse matrix 
                i ##Return the inverse property of the matrix 
        }
        
        #List of methods
        list(setMatrix = setMatrix, getMatrix = getMatrix, setInverse = setInverse, getInverse = getInverse)
}


## This function will calculate the inverse of the special matrix that is returned by the previously defined function makeCacheMatrix
## If inverse has been calculated then the function will return the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        
        if(!is.null(m)){ #return the inverse if the matrix is already set
                message("the data is cached already")
                return(m)
        }
        
        data <- x$getMatrix() ##Get the matrix from the object in the function 
        
        m <- solve(data) %*% data ##compute the inverse matrix using matrix multiplication 
        
        x$setInverse(m) ##set the inverse in the object
        
        m ##return the matrix 
        
}