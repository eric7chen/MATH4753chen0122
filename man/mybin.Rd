% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mybin.R
\name{mybin}
\alias{mybin}
\title{Binomial Simulation}
\usage{
mybin(iter = 100, n = 10, p = 0.5)
}
\arguments{
\item{iter}{number of iterations}

\item{n}{size of trials}

\item{p}{probability of success}
}
\value{
Barplot and table outlining the respective probability of 0 to n successes given p probability in a trial of size n over iter iterations
}
\description{
This function simulates a binomial experiment of succeeding 0 to x amount of times in a trial of a given size over a set amount of iterations. The results are then plotted onto a bar graph and outputted to a table to show the probability of something succeeding 0 to x amount of times over all the iterations.
}
\examples{
mybin(10000, 10, 0.7)
mybin(200, 10, 0.7)

}
