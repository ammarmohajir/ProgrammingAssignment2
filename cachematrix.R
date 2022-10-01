## The fuctions cache the inverse of a matrix and retrive the cached value the next time the second function is called


## The fuction creates special matrix that can cache the inverse

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y){
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    list(get = get, set = set, getinverse = getinverse, setinverse = setinverse)

}


## The fuction return the cached inverse that was calculated before or calculate the invoice if the 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)){
            print("getting cahsed data")
            return(i)
        }
        print("Calculating and cahing inverse")
        data <- x$get()
        i <- solve(data,...)
        x$setinverse(i)
        i
}
