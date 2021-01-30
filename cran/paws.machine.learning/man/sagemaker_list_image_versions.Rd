% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_list_image_versions}
\alias{sagemaker_list_image_versions}
\title{Lists the versions of a specified image and their properties}
\usage{
sagemaker_list_image_versions(CreationTimeAfter, CreationTimeBefore,
  ImageName, LastModifiedTimeAfter, LastModifiedTimeBefore, MaxResults,
  NextToken, SortBy, SortOrder)
}
\arguments{
\item{CreationTimeAfter}{A filter that returns only versions created on or after the specified
time.}

\item{CreationTimeBefore}{A filter that returns only versions created on or before the specified
time.}

\item{ImageName}{[required] The name of the image to list the versions of.}

\item{LastModifiedTimeAfter}{A filter that returns only versions modified on or after the specified
time.}

\item{LastModifiedTimeBefore}{A filter that returns only versions modified on or before the specified
time.}

\item{MaxResults}{The maximum number of versions to return in the response. The default
value is 10.}

\item{NextToken}{If the previous call to \code{ListImageVersions} didn't return the full set
of versions, the call returns a token for getting the next set of
versions.}

\item{SortBy}{The property used to sort results. The default value is \code{CREATION_TIME}.}

\item{SortOrder}{The sort order. The default value is \code{DESCENDING}.}
}
\description{
Lists the versions of a specified image and their properties. The list
can be filtered by creation time or modified time.
}
\section{Request syntax}{
\preformatted{svc$list_image_versions(
  CreationTimeAfter = as.POSIXct(
    "2015-01-01"
  ),
  CreationTimeBefore = as.POSIXct(
    "2015-01-01"
  ),
  ImageName = "string",
  LastModifiedTimeAfter = as.POSIXct(
    "2015-01-01"
  ),
  LastModifiedTimeBefore = as.POSIXct(
    "2015-01-01"
  ),
  MaxResults = 123,
  NextToken = "string",
  SortBy = "CREATION_TIME"|"LAST_MODIFIED_TIME"|"VERSION",
  SortOrder = "ASCENDING"|"DESCENDING"
)
}
}

\keyword{internal}