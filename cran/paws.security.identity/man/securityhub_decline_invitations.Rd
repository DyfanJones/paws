% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/securityhub_operations.R
\name{securityhub_decline_invitations}
\alias{securityhub_decline_invitations}
\title{Declines invitations to become a member account}
\usage{
securityhub_decline_invitations(AccountIds)
}
\arguments{
\item{AccountIds}{[required] The list of account IDs for the accounts from which to decline the
invitations to Security Hub.}
}
\description{
Declines invitations to become a member account.
}
\section{Request syntax}{
\preformatted{svc$decline_invitations(
  AccountIds = list(
    "string"
  )
)
}
}

\keyword{internal}
