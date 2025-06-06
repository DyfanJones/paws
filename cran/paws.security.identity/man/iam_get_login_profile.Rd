% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iam_operations.R
\name{iam_get_login_profile}
\alias{iam_get_login_profile}
\title{Retrieves the user name for the specified IAM user}
\usage{
iam_get_login_profile(UserName = NULL)
}
\arguments{
\item{UserName}{The name of the user whose login profile you want to retrieve.

This parameter is optional. If no user name is included, it defaults to
the principal making the request. When you make this request with root
user credentials, you must use an
\href{https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoot.html}{AssumeRoot}
session to omit the user name.

This parameter allows (through its \href{https://en.wikipedia.org/wiki/Regex}{regex pattern}) a string of characters
consisting of upper and lowercase alphanumeric characters with no
spaces. You can also include any of the following characters: _+=,.@-}
}
\description{
Retrieves the user name for the specified IAM user. A login profile is created when you create a password for the user to access the Amazon Web Services Management Console. If the user does not exist or does not have a password, the operation returns a 404 (\code{NoSuchEntity}) error.

See \url{https://www.paws-r-sdk.com/docs/iam_get_login_profile/} for full documentation.
}
\keyword{internal}
