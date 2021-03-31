#'Frequency of Sample Sums
#'
#'This function takes in a lower and upper limit, as well as sample size and iterations, and generates a histogram based on the frequency of the sums of these samples.
#'
#'@param n size of samples
#'@param iter number of iterations
#'@param a lower limit
#'@param b upper limit
#'
#'@return Histogram and sums of samples
#'
#'@examples
#'myclt(n=10, iter=10000)
#'
#'@export
myclt=function(n, iter) {
  y = runif(n * iter, 0, 5)
  data = matrix(y, nr = n, nc = iter, byrow = TRUE)
  sm = apply(data, 2, sum)
  hist(sm)
  sm
}
