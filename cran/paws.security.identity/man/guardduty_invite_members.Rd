% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/guardduty_operations.R
\name{guardduty_invite_members}
\alias{guardduty_invite_members}
\title{Invites Amazon Web Services accounts to become members of an
organization administered by the Amazon Web Services account that
invokes this API}
\usage{
guardduty_invite_members(
  DetectorId,
  AccountIds,
  DisableEmailNotification = NULL,
  Message = NULL
)
}
\arguments{
\item{DetectorId}{[required] The unique ID of the detector of the GuardDuty account with which you
want to invite members.

To find the \code{detectorId} in the current Region, see the Settings page in
the GuardDuty console, or run the
\code{\link[=guardduty_list_detectors]{list_detectors}} API.}

\item{AccountIds}{[required] A list of account IDs of the accounts that you want to invite to
GuardDuty as members.}

\item{DisableEmailNotification}{A Boolean value that specifies whether you want to disable email
notification to the accounts that you are inviting to GuardDuty as
members.}

\item{Message}{The invitation message that you want to send to the accounts that you're
inviting to GuardDuty as members.}
}
\description{
Invites Amazon Web Services accounts to become members of an organization administered by the Amazon Web Services account that invokes this API. If you are using Amazon Web Services Organizations to manage your GuardDuty environment, this step is not needed. For more information, see \href{https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_organizations.html}{Managing accounts with organizations}.

See \url{https://www.paws-r-sdk.com/docs/guardduty_invite_members/} for full documentation.
}
\keyword{internal}
