#' @title getFilenames
#' @description This function returns a list of filenames in a specified S3 Bucket. This will not work until you set environment variables using "setEnvironment"
#' @param bucket This is the bucketname from which to return files. This function assumes there is no hierarchy and won't dive into folders.
#' @return  filenames A simple list of files in the S3 Bucket

getFilenames <- function(bucket) {
    filenames <- NULL
    bucket.list <- aws.s3::get_bucket(bucket, check_region = FALSE)
    for (file in bucket.list) {
      filenames <- c(filenames, file$Key)
    }
    names(filenames) <- "Filename"
    return(filenames)
  }
