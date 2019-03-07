#' @title csvToDataframe
#' @description This function returns a dataframe from a .csv file stored on AWS S3.
#' @param s3URL This is the S3 URL to the .csv file.
#' @return A dataframe made from .csv.
#' @examples csvToDataframe("s3://cloudsimplifier-examples/example.csv")

csvToDataframe <- function(s3URL) {
  return(readr::read_csv(rawToChar(aws.s3::get_object(s3URL, url_style = "virtual", check_region = FALSE))))
}
