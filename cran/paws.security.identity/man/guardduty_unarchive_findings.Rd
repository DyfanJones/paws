% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/guardduty_operations.R
\name{guardduty_unarchive_findings}
\alias{guardduty_unarchive_findings}
\title{Unarchives GuardDuty findings specified by the findingIds}
\usage{
guardduty_unarchive_findings(DetectorId, FindingIds)
}
\arguments{
\item{DetectorId}{[required] The ID of the detector associated with the findings to unarchive.

To find the \code{detectorId} in the current Region, see the Settings page in
the GuardDuty console, or run the
\code{\link[=guardduty_list_detectors]{list_detectors}} API.}

\item{FindingIds}{[required] The IDs of the findings to unarchive.}
}
\description{
Unarchives GuardDuty findings specified by the \code{findingIds}.

See \url{https://www.paws-r-sdk.com/docs/guardduty_unarchive_findings/} for full documentation.
}
\keyword{internal}
