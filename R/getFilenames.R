#' @title getFilenames
#' @description This function returns a list of filenames in a specified S3 Bucket
#' @param bucket This is the bucketname from which to return files. This function assumes there is no hierarchy and won't dive into folders.
#' @return  filenames A simple list of files in the S3 Bucket

getFilenames <- function(bucket) {
  filenames <- NULL
  bucket.list <- get_bucket(bucket)
  for (file in bucket.list) {
    filenames <- c(filenames, file$Key)
  }
  names(filenames) <- "Filename"
  return(filenames)
}
