% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/guardduty_operations.R
\name{guardduty_delete_publishing_destination}
\alias{guardduty_delete_publishing_destination}
\title{Deletes the publishing definition with the specified destinationId}
\usage{
guardduty_delete_publishing_destination(DetectorId, DestinationId)
}
\arguments{
\item{DetectorId}{[required] The unique ID of the detector associated with the publishing destination
to delete.}

\item{DestinationId}{[required] The ID of the publishing destination to delete.}
}
\description{
Deletes the publishing definition with the specified \code{destinationId}.
}
\section{Request syntax}{
\preformatted{svc$delete_publishing_destination(
  DetectorId = "string",
  DestinationId = "string"
)
}
}

\keyword{internal}
