% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/serverlessapplicationrepository_operations.R
\name{serverlessapplicationrepository_unshare_application}
\alias{serverlessapplicationrepository_unshare_application}
\title{Unshares an application from an AWS Organization}
\usage{
serverlessapplicationrepository_unshare_application(ApplicationId,
  OrganizationId)
}
\arguments{
\item{ApplicationId}{[required] The Amazon Resource Name (ARN) of the application.}

\item{OrganizationId}{[required] The AWS Organization ID to unshare the application from.}
}
\description{
Unshares an application from an AWS Organization.
}
\details{
This operation can be called only from the organization\'s master
account.
}
\section{Request syntax}{
\preformatted{svc$unshare_application(
  ApplicationId = "string",
  OrganizationId = "string"
)
}
}

\keyword{internal}