% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/guardduty_operations.R
\name{guardduty_delete_detector}
\alias{guardduty_delete_detector}
\title{Deletes an Amazon GuardDuty detector that is specified by the detector
ID}
\usage{
guardduty_delete_detector(DetectorId)
}
\arguments{
\item{DetectorId}{[required] The unique ID of the detector that you want to delete.

To find the \code{detectorId} in the current Region, see the Settings page in
the GuardDuty console, or run the
\code{\link[=guardduty_list_detectors]{list_detectors}} API.}
}
\description{
Deletes an Amazon GuardDuty detector that is specified by the detector ID.

See \url{https://www.paws-r-sdk.com/docs/guardduty_delete_detector/} for full documentation.
}
\keyword{internal}
