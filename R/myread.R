#' Reads a CSV file
#'
#' This function takes in a csv, reads through its contents,
#' and creates a dataframe by separating the terms by commas.
#' If the file is not in the current directory, users will be prompted
#' to locate and choose the file off their system.
#'
#' @param csv Name of csv file
#'
#' @return Dataframe type
#'
#' @examples
#' \dontrun{mpg.df=myread("EPAGAS.csv")}
#' \dontrun{choose.df=myread("")}
#'
#' @export
myread <- function(csv) {
  if (file.exists(csv)) {
    fl = paste(csv, sep = "")
    read.table(fl, header = TRUE, sep = ",")
  }
  else {
    fl = paste(file.choose(), sep = "")
    read.table(fl, header = TRUE, sep = ",")
  }
}

