% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_list_user_pools}
\alias{cognitoidentityprovider_list_user_pools}
\title{Lists the user pools associated with an AWS account}
\usage{
cognitoidentityprovider_list_user_pools(NextToken, MaxResults)
}
\arguments{
\item{NextToken}{An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.}

\item{MaxResults}{[required] The maximum number of results you want the request to return when
listing the user pools.}
}
\description{
Lists the user pools associated with an AWS account.
}
\section{Request syntax}{
\preformatted{svc$list_user_pools(
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}
