% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kinesis_operations.R
\name{kinesis_untag_resource}
\alias{kinesis_untag_resource}
\title{Removes tags from the specified Kinesis resource}
\usage{
kinesis_untag_resource(TagKeys, ResourceARN)
}
\arguments{
\item{TagKeys}{[required] A list of tag key-value pairs. Existing tags of the resource whose keys
are members of this list will be removed from the Kinesis resource.}

\item{ResourceARN}{[required] The Amazon Resource Name (ARN) of the Kinesis resource from which to
remove tags.}
}
\description{
Removes tags from the specified Kinesis resource. Removed tags are deleted and can't be recovered after this operation completes successfully.

See \url{https://www.paws-r-sdk.com/docs/kinesis_untag_resource/} for full documentation.
}
\keyword{internal}
