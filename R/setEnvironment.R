#' @title setEnvironment
#' @description This function sets the environment variables for the AWS environment
#' @param key This goes into the AWS_ACCESS_KEY_ID
#' @param secret This goes into the AWS_SECRET_ACCESS_KEY
#' @param region This goes into the AWS_DEFAULT_REGION
#' @examples setEnvironment("xxxxxxxx", "xxxxx/xxx", "ap-south-1")

setEnvironment <- function(key, secret, region) {
  Sys.setenv(
    "AWS_ACCESS_KEY_ID" = key,
    "AWS_SECRET_ACCESS_KEY" = secret,
    "AWS_DEFAULT_REGION" = region
  )
}
