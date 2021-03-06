% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_get_bucket_location}
\alias{s3_get_bucket_location}
\title{Returns the Region the bucket resides in}
\usage{
s3_get_bucket_location(Bucket)
}
\arguments{
\item{Bucket}{[required] The name of the bucket for which to get the location.}
}
\description{
Returns the Region the bucket resides in. You set the bucket\'s Region
using the \code{LocationConstraint} request parameter in a \code{CreateBucket}
request. For more information, see CreateBucket.
}
\details{
To use this implementation of the operation, you must be the bucket
owner.

The following operations are related to \code{GetBucketLocation}:
\itemize{
\item GetObject
\item CreateBucket
}
}
\section{Request syntax}{
\preformatted{svc$get_bucket_location(
  Bucket = "string"
)
}
}

\examples{
\dontrun{
# The following example returns bucket location.
svc$get_bucket_location(
  Bucket = "examplebucket"
)
}

}
\keyword{internal}
