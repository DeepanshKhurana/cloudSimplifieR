# cloudSimplifieR
This package provides simple helper functions to fetch and read data from various formats stored on Amazon AWS S3 Buckets. This uses cloudyR and offers direct functions to do the following:

- Get a list of filenames from an AWS bucket (`getFilenames`)
- Get a dataframe from a .csv file using its S3 url (`csvToDataframe`)
- Get a dataframe from a .json file using its S3 url (`jsonToDataframe`)
- Get a dataframe directly without using an S3 url instead just using the filename, bucket, and format. This currently supports .csv and .json. It essentially wraps over `csvToDataframe` and `jsonToDataframe` conditionally. (`getFileData`)

## Pre-requisite

Before you use this library, make sure you set Environment Variables using the `setEnvironment` function. Please use `?setEnvironment` to check the inputs you'd need.

#### Requests/Feedback/Suggestions

Please submit a pull request for any of these. Thank you!
