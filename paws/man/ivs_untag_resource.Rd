% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ivs_operations.R
\name{ivs_untag_resource}
\alias{ivs_untag_resource}
\title{Removes tags for a resource with a specified ARN}
\usage{
ivs_untag_resource(resourceArn, tagKeys)
}
\arguments{
\item{resourceArn}{[required] ARN of the resource for which tags are to be removed.}

\item{tagKeys}{[required] Array of tags to be removed.}
}
\description{
Removes tags for a resource with a specified ARN.
}
\section{Request syntax}{
\preformatted{svc$untag_resource(
  resourceArn = "string",
  tagKeys = list(
    "string"
  )
)
}
}

\keyword{internal}
