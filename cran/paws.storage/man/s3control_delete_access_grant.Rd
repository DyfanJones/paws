% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3control_operations.R
\name{s3control_delete_access_grant}
\alias{s3control_delete_access_grant}
\title{Deletes the access grant from the S3 Access Grants instance}
\usage{
s3control_delete_access_grant(AccountId, AccessGrantId)
}
\arguments{
\item{AccountId}{[required] The Amazon Web Services account ID of the S3 Access Grants instance.}

\item{AccessGrantId}{[required] The ID of the access grant. S3 Access Grants auto-generates this ID when
you create the access grant.}
}
\description{
Deletes the access grant from the S3 Access Grants instance. You cannot undo an access grant deletion and the grantee will no longer have access to the S3 data.

See \url{https://www.paws-r-sdk.com/docs/s3control_delete_access_grant/} for full documentation.
}
\keyword{internal}
