#'Creates, displays, and calculates the area/probability of a given region in a normal distribution plot
#'
#'This function takes in the mean, standard deviation, and upper limit (of the area) to calculate and display the area under the curve.
#'
#'@param mu mean
#'@param sigma standard deviation
#'@param a upper limit (probability P(X<=a))
#'
#'@return Displays the curve with the shaded region along with the area, and outputs the area as a list in the command line
#'
#'@examples
#'myncurve(2,5,5)
#'myncurve(5,1,5)
#'
#'@export
myncurve = function(mu,sigma, a) {
  curve(dnorm(x,mean=mu,sd=sigma), xlim=c(mu-3*sigma,mu+3*sigma))
  xnorm = seq(-100, a, length=1000)
  ynorm = dnorm(xnorm, mean=mu, sd=sigma)
  polygon(c(-100, xnorm, a), c(0,ynorm,0), col = "Light Green")
  area = pnorm(a, mean=mu, sd=sigma)
  text(mu,0,paste("Area=",round(area,4),sep=""))
  list(round(area, 4))
}
