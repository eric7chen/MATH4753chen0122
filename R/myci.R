#'Single Sample Confidence Interval
#'
#'This function takes in a sample and confidence level to create a confidence interval
#'
#'@param x sample
#'@param conf.level confidence level
#'
#'@return interval contained in a list
#'
#'@example
#'myci(c(1,1,2,3))
#'myci(c(1,1,2,3),0.95)
#'
#'@export
myci=function(x, conf.level=0.95){
  i=c()
  a=1-conf.level
  i[1]=mean(x) - qt(1-a/2, df = length(x)-1)*sd(x)/sqrt(length(x))
  i[2]=mean(x) + qt(1-a/2, df = length(x)-1)*sd(x)/sqrt(length(x))
  i
}
