% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudfront_operations.R
\name{cloudfront_delete_vpc_origin}
\alias{cloudfront_delete_vpc_origin}
\title{Delete an Amazon CloudFront VPC origin}
\usage{
cloudfront_delete_vpc_origin(Id, IfMatch)
}
\arguments{
\item{Id}{[required] The VPC origin ID.}

\item{IfMatch}{[required] The version identifier of the VPC origin to delete. This is the \code{ETag}
value returned in the response to
\code{\link[=cloudfront_get_vpc_origin]{get_vpc_origin}}.}
}
\description{
Delete an Amazon CloudFront VPC origin.

See \url{https://www.paws-r-sdk.com/docs/cloudfront_delete_vpc_origin/} for full documentation.
}
\keyword{internal}
