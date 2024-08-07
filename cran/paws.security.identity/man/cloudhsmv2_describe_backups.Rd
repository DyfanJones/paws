% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudhsmv2_operations.R
\name{cloudhsmv2_describe_backups}
\alias{cloudhsmv2_describe_backups}
\title{Gets information about backups of CloudHSM clusters}
\usage{
cloudhsmv2_describe_backups(
  NextToken = NULL,
  MaxResults = NULL,
  Filters = NULL,
  Shared = NULL,
  SortAscending = NULL
)
}
\arguments{
\item{NextToken}{The \code{NextToken} value that you received in the previous response. Use
this value to get more backups.}

\item{MaxResults}{The maximum number of backups to return in the response. When there are
more backups than the number you specify, the response contains a
\code{NextToken} value.}

\item{Filters}{One or more filters to limit the items returned in the response.

Use the \code{backupIds} filter to return only the specified backups. Specify
backups by their backup identifier (ID).

Use the \code{sourceBackupIds} filter to return only the backups created from
a source backup. The \code{sourceBackupID} of a source backup is returned by
the \code{\link[=cloudhsmv2_copy_backup_to_region]{copy_backup_to_region}}
operation.

Use the \code{clusterIds} filter to return only the backups for the specified
clusters. Specify clusters by their cluster identifier (ID).

Use the \code{states} filter to return only backups that match the specified
state.

Use the \code{neverExpires} filter to return backups filtered by the value in
the \code{neverExpires} parameter. \code{True} returns all backups exempt from the
backup retention policy. \code{False} returns all backups with a backup
retention policy defined at the cluster.}

\item{Shared}{Describe backups that are shared with you.

By default when using this option, the command returns backups that have
been shared using a standard Resource Access Manager resource share. In
order for a backup that was shared using the PutResourcePolicy command
to be returned, the share must be promoted to a standard resource share
using the RAM
\href{https://docs.aws.amazon.com/cli/latest/reference/ram/promote-resource-share-created-from-policy.html}{PromoteResourceShareCreatedFromPolicy}
API operation. For more information about sharing backups, see \href{https://docs.aws.amazon.com/cloudhsm/latest/userguide/sharing.html}{Working with shared backups}
in the CloudHSM User Guide.}

\item{SortAscending}{Designates whether or not to sort the return backups by ascending
chronological order of generation.}
}
\description{
Gets information about backups of CloudHSM clusters. Lists either the backups you own or the backups shared with you when the Shared parameter is true.

See \url{https://www.paws-r-sdk.com/docs/cloudhsmv2_describe_backups/} for full documentation.
}
\keyword{internal}
