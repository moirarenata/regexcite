#' Add two numbers
#'
#' @param x The first number to be added
#' @param y The second number to be added. The default value is 10
#'
#' @return The sum of x and y.
#' @export
#'
#' @examples
#' my_add(1)    # output 11
#' my_add(1, 2) # output 3 , since y is set to 2
#' my_add(10, NA) # output: NA
#' my_add("10", "20") #output: error message saying "One of your inputs contains a string value"
#'

my_add <- function(x, y = 10) {
  if (is.na(x) || is.na(y)) {
    return(NA)
  }
  else if (!is.numeric(x) || !is.numeric(y)) {
    stop("One of your inputs contains a string value")
  }
  else{
  return(x + y)
  }
}
