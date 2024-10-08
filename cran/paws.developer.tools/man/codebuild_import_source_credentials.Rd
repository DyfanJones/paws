% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codebuild_operations.R
\name{codebuild_import_source_credentials}
\alias{codebuild_import_source_credentials}
\title{Imports the source repository credentials for an CodeBuild project that
has its source code stored in a GitHub, GitHub Enterprise, GitLab,
GitLab Self Managed, or Bitbucket repository}
\usage{
codebuild_import_source_credentials(
  username = NULL,
  token,
  serverType,
  authType,
  shouldOverwrite = NULL
)
}
\arguments{
\item{username}{The Bitbucket username when the \code{authType} is BASIC_AUTH. This parameter
is not valid for other types of source providers or connections.}

\item{token}{[required] For GitHub or GitHub Enterprise, this is the personal access token. For
Bitbucket, this is either the access token or the app password. For the
\code{authType} CODECONNECTIONS, this is the \code{connectionArn}. For the
\code{authType} SECRETS_MANAGER, this is the \code{secretArn}.}

\item{serverType}{[required] The source provider used for this project.}

\item{authType}{[required] The type of authentication used to connect to a GitHub, GitHub
Enterprise, GitLab, GitLab Self Managed, or Bitbucket repository. An
OAUTH connection is not supported by the API and must be created using
the CodeBuild console.}

\item{shouldOverwrite}{Set to \code{false} to prevent overwriting the repository source credentials.
Set to \code{true} to overwrite the repository source credentials. The
default value is \code{true}.}
}
\description{
Imports the source repository credentials for an CodeBuild project that has its source code stored in a GitHub, GitHub Enterprise, GitLab, GitLab Self Managed, or Bitbucket repository.

See \url{https://www.paws-r-sdk.com/docs/codebuild_import_source_credentials/} for full documentation.
}
\keyword{internal}
