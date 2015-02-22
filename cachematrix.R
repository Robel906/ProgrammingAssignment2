## The following function will work as a class, the list that will be created by four member

## functions are; set, get, setInv as well as getInv. In order to avoid the internal variables

## not to be exposed to the outside environment it usess <<- assignment operator.

## Note: Here I would like to inform that I have assisted my assignment from the work of Zhihao Ding.
## Thank you Zhihao Ding.


makeCacheMatrix <- function(x = matrix()) {
    
    xinv <- NULL # This will store the result of inversion
    set <- function(y) {
	  x <<- y
}
get <- function() x  #This will return the input matrix
setInv <- function(inv) xinv <<- inv  #This will set the inversed matrix
getInv <- function() xinv # This will return the inversed matrix

      list(set = set, get = get,
	       setInv = setInv,
	       getInv = getInv() 
  }

cacheSolve <- function(x, ...) {
        m <- x$getInv()    # This will get the inversed matrix from object x
        if(!is.null(m)) { 
        message("getting cached data")
        return(m) #This will return the calculated inversion
}
data <- x$get() # This will get the matrix object
m <- solve(data) 
x$setInv(m) # This will set it to the object
m # This will return the solved result
}

##Test will generate a random square 
test <- matrix(runif(9,1,100),3,3)
testCached <- makeCacheMatrix(test) # This will generate the makeCacheMatrix object matrix

#The following will retrieve the calculated inversion using the cachSolve function
  testInv <- cacheSolve(testCached)
  testInv <- cacheSolve(testCached)
  testInv <- cacheSolve(testCached)
  testInv <- cacheSolve(testCached)
  testInv <- cacheSolve(testCached)


