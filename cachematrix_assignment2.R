## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) 
{

    m <- NULL                                      

    set <- function(y) 
    {
        global_x <<- y 
        global_m <<- NULL                                
    }

    get <- function() return(global_x)

    set_global_m <- function(m) global_m <<- m    

    get_global_m <- function() return(global_m)                       
    list(set = set, get = get,
         set_global_m = set_global_m,
         get_global_m = get_global_m)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) 
{
    m<- x$get_global_m()               
    if(!is.null(m)) 
    { 
        message("cached data...")
        return(m)
    }

    data <- x$get()               
    inverseMatrix <- solve(data)   
    x$set_global_m(inverseMatrix)             
    return(inverseMatrix)  
}
