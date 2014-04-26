## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set = function(y){
		mat <<- y
		inv <<- NULL
	}

	get = function(){
		mat
	}

	setinv = function(x){
		inv <<- x
	}

	getinv = function(){
		inv
	}

	list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getinv()
    if(!is.null(m)){
   		#getting cached matrix
    	return (m)
    }else{
    	inv <- solve(x$get())
    	x$setinv(inv)
    	return (inv)
    }
}
