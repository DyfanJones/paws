% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_list_identity_providers}
\alias{cognitoidentityprovider_list_identity_providers}
\title{Given a user pool ID, returns information about configured identity
providers (IdPs)}
\usage{
cognitoidentityprovider_list_identity_providers(
  UserPoolId,
  MaxResults = NULL,
  NextToken = NULL
)
}
\arguments{
\item{UserPoolId}{[required] The ID of the user pool where you want to list IdPs.}

\item{MaxResults}{The maximum number of IdPs that you want Amazon Cognito to return in the
response.}

\item{NextToken}{This API operation returns a limited number of results. The pagination
token is an identifier that you can present in an additional API request
with the same parameters. When you include the pagination token, Amazon
Cognito returns the next set of items after the current list. Subsequent
requests return a new pagination token. By use of this token, you can
paginate through the full list of items.}
}
\description{
Given a user pool ID, returns information about configured identity providers (IdPs). For more information about IdPs, see \href{https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html}{Third-party IdP sign-in}.

See \url{https://www.paws-r-sdk.com/docs/cognitoidentityprovider_list_identity_providers/} for full documentation.
}
\keyword{internal}
