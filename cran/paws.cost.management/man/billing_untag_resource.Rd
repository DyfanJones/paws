% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/billing_operations.R
\name{billing_untag_resource}
\alias{billing_untag_resource}
\title{Removes one or more tags from a resource}
\usage{
billing_untag_resource(resourceArn, resourceTagKeys)
}
\arguments{
\item{resourceArn}{[required] The Amazon Resource Name (ARN) of the resource.}

\item{resourceTagKeys}{[required] A list of tag key value pairs that are associated with the resource.}
}
\description{
Removes one or more tags from a resource. Specify only tag keys in your request. Don't specify the value.

See \url{https://www.paws-r-sdk.com/docs/billing_untag_resource/} for full documentation.
}
\keyword{internal}
