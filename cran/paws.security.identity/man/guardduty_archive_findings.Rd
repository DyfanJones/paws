% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/guardduty_operations.R
\name{guardduty_archive_findings}
\alias{guardduty_archive_findings}
\title{Archives GuardDuty findings that are specified by the list of finding
IDs}
\usage{
guardduty_archive_findings(DetectorId, FindingIds)
}
\arguments{
\item{DetectorId}{[required] The ID of the detector that specifies the GuardDuty service whose
findings you want to archive.

To find the \code{detectorId} in the current Region, see the Settings page in
the GuardDuty console, or run the
\code{\link[=guardduty_list_detectors]{list_detectors}} API.}

\item{FindingIds}{[required] The IDs of the findings that you want to archive.}
}
\description{
Archives GuardDuty findings that are specified by the list of finding IDs.

See \url{https://www.paws-r-sdk.com/docs/guardduty_archive_findings/} for full documentation.
}
\keyword{internal}
