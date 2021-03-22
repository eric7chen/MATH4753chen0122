#' Gives distance and damage of a fire
#'
#' This dataset contains the distance a fire traveled and the amount of damage the fire did.
#'
#'@format A data frame with 15 rows and 2 variables
#'\describe{
#'\item{DISTANCE}{distance unit}
#'\item{DAMAGE}{damage unit}
#'}
#'

fire=read.csv("FIREDAM.csv")
usethis::use_data(fire, fire, overwrite = TRUE)
