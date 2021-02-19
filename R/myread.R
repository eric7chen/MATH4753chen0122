#' Reads a CSV file
#'
#' This function takes in a csv, reads through its contents,
#' and creates a dataframe by seperating the terms by commas.
#'
#' @param Path to CSV file
#'
#' @return Dataframe type
#'
#' @examples
#' mpg.df=myread("EPAGAS.csv")
#'
#' @export
myread <- function(csv){
  fl=paste(dird,csv,sep="")
  read.table(fl,header=TRUE,sep=",")
}
