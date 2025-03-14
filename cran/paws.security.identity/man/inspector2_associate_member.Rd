% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/inspector2_operations.R
\name{inspector2_associate_member}
\alias{inspector2_associate_member}
\title{Associates an Amazon Web Services account with an Amazon Inspector
delegated administrator}
\usage{
inspector2_associate_member(accountId)
}
\arguments{
\item{accountId}{[required] The Amazon Web Services account ID of the member account to be
associated.}
}
\description{
Associates an Amazon Web Services account with an Amazon Inspector delegated administrator. An HTTP 200 response indicates the association was started but doesn’t indicate whether it completed. You can check if the association completed using \code{\link[=inspector2_list_members]{list_members}} for multiple accounts or \href{https://docs.aws.amazon.com/inspector/v2/APIReference/API_GetMember.html}{GetMembers} for a single account. An HTTP 402 response indicates the association failed because the organization size exceeded its limit. For information on limits, see \href{https://docs.aws.amazon.com/inspector/latest/user/quotas.html}{Amazon Inspector quotas}.

See \url{https://www.paws-r-sdk.com/docs/inspector2_associate_member/} for full documentation.
}
\keyword{internal}
