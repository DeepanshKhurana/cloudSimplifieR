#' @title csvToDataframe
#' @description This function returns a dataframe from a .csv file stored on AWS S3.
#' @param s3URL This is the S3 URL to the .csv file.
#' @return A dataframe made from .csv.

csvToDataframe <- function(s3URL) {
  return(aws.s3::s3read_using(utils::read.csv, object = s3URL))
}
