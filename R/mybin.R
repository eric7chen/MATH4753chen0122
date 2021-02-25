#' Binomial Simulation
#'
#' This function simulates a binomial experiment of succeeding 0 to x amount of times in a trial of a given size over a set amount of iterations. The results are then plotted onto a bar graph and outputted to a table to show the probability of something succeeding 0 to x amount of times over all the iterations.
#'
#' @param iter number of iterations
#' @param n size of trials
#' @param p probability of success
#'
#' @return Barplot and table outlining the respective probability of 0 to n successes given p probability in a trial of size n over iter iterations
#'
#' @examples
#' mybin(10000, 10, 0.7)
#' mybin(200, 10, 0.7)
#'
#' @export

mybin = function(iter = 100,
                 n = 10,
                 p = 0.5) {
  # make a matrix to hold the samples
  #initially filled with NA's
  sam.mat = matrix(NA,
                   nr = n,
                   nc = iter,
                   byrow = TRUE)
  #Make a vector to hold the number of successes in each trial
  succ = c()
  for (i in 1:iter) {
    #Fill each column with a new sample
    sam.mat[, i] = sample(c(1, 0), n, replace = TRUE, prob = c(p, 1 - p))
    #Calculate a statistic from the sample (this case it is the sum)
    succ[i] = sum(sam.mat[, i])
  }
  #Make a table of successes
  succ.tab = table(factor(succ, levels = 0:n))
  #Make a barplot of the proportions
  barplot(
    succ.tab / (iter),
    col = rainbow(n + 1),
    main = "Binomial simulation",
    xlab = "Number of successes"
  )
  succ.tab / iter
}
