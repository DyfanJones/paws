% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/organizations_operations.R
\name{organizations_list_targets_for_policy}
\alias{organizations_list_targets_for_policy}
\title{Lists all the roots, organizational units (OUs), and accounts that the
specified policy is attached to}
\usage{
organizations_list_targets_for_policy(PolicyId, NextToken, MaxResults)
}
\arguments{
\item{PolicyId}{[required] The unique identifier (ID) of the policy whose attachments you want to
know.

The \href{http://wikipedia.org/wiki/regex}{regex pattern} for a policy ID
string requires \"p-\" followed by from 8 to 128 lowercase or uppercase
letters, digits, or the underscore character (\\_).}

\item{NextToken}{The parameter for receiving additional results if you receive a
\code{NextToken} response in a previous request. A \code{NextToken} response
indicates that more output is available. Set this parameter to the value
of the previous call\'s \code{NextToken} response to indicate where the
output should continue from.}

\item{MaxResults}{The total number of results that you want included on each page of the
response. If you do not include this parameter, it defaults to a value
that is specific to the operation. If additional items exist beyond the
maximum you specify, the \code{NextToken} response element is present and has
a value (is not null). Include that value as the \code{NextToken} request
parameter in the next call to the operation to get the next part of the
results. Note that Organizations might return fewer results than the
maximum even when there are more results available. You should check
\code{NextToken} after every operation to ensure that you receive all of the
results.}
}
\description{
Lists all the roots, organizational units (OUs), and accounts that the
specified policy is attached to.
}
\details{
Always check the \code{NextToken} response parameter for a \code{null} value when
calling a \verb{List*} operation. These operations can occasionally return an
empty set of results even when there are more results available. The
\code{NextToken} response parameter value is \code{null} \emph{only} when there are no
more results to display.

This operation can be called only from the organization\'s master
account or by a member account that is a delegated administrator for an
AWS service.
}
\section{Request syntax}{
\preformatted{svc$list_targets_for_policy(
  PolicyId = "string",
  NextToken = "string",
  MaxResults = 123
)
}
}

\examples{
\dontrun{
# The following example shows how to get the list of roots, OUs, and
# accounts to which the specified policy is attached:/n/n
svc$list_targets_for_policy(
  PolicyId = "p-FullAWSAccess"
)
}

}
\keyword{internal}
