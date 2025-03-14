% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_admin_get_user}
\alias{cognitoidentityprovider_admin_get_user}
\title{Given the username, returns details about a user profile in a user pool}
\usage{
cognitoidentityprovider_admin_get_user(UserPoolId, Username)
}
\arguments{
\item{UserPoolId}{[required] The ID of the user pool where you want to get information about the
user.}

\item{Username}{[required] The username of the user that you want to query or modify. The value of
this parameter is typically your user's username, but it can be any of
their alias attributes. If \code{username} isn't an alias attribute in your
user pool, this value must be the \code{sub} of a local user or the username
of a user from a third-party IdP.}
}
\description{
Given the username, returns details about a user profile in a user pool. This operation contributes to your monthly active user (MAU) count for the purpose of billing. You can specify alias attributes in the \code{Username} parameter.

See \url{https://www.paws-r-sdk.com/docs/cognitoidentityprovider_admin_get_user/} for full documentation.
}
\keyword{internal}
