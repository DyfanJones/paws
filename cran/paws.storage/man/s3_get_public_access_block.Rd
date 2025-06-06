% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_get_public_access_block}
\alias{s3_get_public_access_block}
\title{This operation is not supported for directory buckets}
\usage{
s3_get_public_access_block(Bucket, ExpectedBucketOwner = NULL)
}
\arguments{
\item{Bucket}{[required] The name of the Amazon S3 bucket whose \code{PublicAccessBlock} configuration
you want to retrieve.}

\item{ExpectedBucketOwner}{The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request fails
with the HTTP status code \verb{403 Forbidden} (access denied).}
}
\description{
This operation is not supported for directory buckets.

See \url{https://www.paws-r-sdk.com/docs/s3_get_public_access_block/} for full documentation.
}
\keyword{internal}
