## Write a pair of functionsthat catch the inverse of matrix
# 1. set the value of matrix
# 2. get the value of matrix
# 3. set the value of inversematrix
# 4. get the value of inversematrix

## This function creates a special "matrix" object that can catch its inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function (y) {
    x <<-y
    m <<- NULL
  }
  get <- function() x
  setinversematrix <- function(solve) m <<- solve
  getinversematrix <- function() m
  list(set = set, get = get, 
       setinversematrix = setinversematrix,
       getinversematrix = getinversematrix)

}


## This function computes the inverse of special "matrix" returned by make CatcheMatrix

cacheSolve <- function(x, ...) {
  m <- x$getinversematrix()
  if (!is.null(m)){
    message ("getting catched data")
    return (m)
  }
  matrix <- x$get()
  m <-solve(matrix, ...)
  x$setinversematrix(m)
  m
        ## Return a matrix that is the inverse of 'x'
}

# test 
#a= makeCacheMatrix(matrix(1:4,2))
#a$get()
#cacheSolve(a)
