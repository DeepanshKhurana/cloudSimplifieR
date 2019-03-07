#' @title getFileData
#' @description This function returns a dataframe from a file stored on an AWS S3 Bucket.
#' @param filename This is the name of the file with extension.
#' @param format This is the format of the file. Currently supports: .csv, .json
#' @param bucket This is the name of the S3 Bucket.
#' @return A dataframe
#' @examples getFileData("example.csv", "csv", "cloudsimplifier-examples")

getFileData <- function(filename, format, bucket) {
  url <- paste("s3://", bucket, "/", filename, sep = "")
  if (identical(tolower(format), "json")) {
    data <- jsonToDataframe(url)
    return(data)
  }
  else if (identical(tolower(format), "csv")) {
    data <- csvToDataframe(url)
    return(data)
  }
  else {
    print("Invalid format. The package only supports .csv and .json for now.")
  }
}
