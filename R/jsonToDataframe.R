#' @title jsonToDataframe
#' @description This function returns a dataframe from a json file stored on AWS S3.
#' @param s3URL This is the S3 URL to the json file.
#' @return A dataframe made from json. If the json is invalid, it prints an error message and returns the json string for debugging or other exploration.
#' @examples jsonToDataframe("s3://cloudsimplifier-examples/example.json")

jsonToDataframe <- function(s3URL) {
  json.string <-
    rawToChar(aws.s3::get_object(s3URL, url_style = "virtual", check_region = FALSE))
  if (sapply(json.string, jsonlite::validate, USE.NAMES = FALSE)) {
    return(jsonlite::fromJSON(json.string))
  }
  else {
    print("Invalid json. Please check returned object to debug.")
    return(json.string)
  }
}
