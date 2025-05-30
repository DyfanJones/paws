% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudformation_operations.R
\name{cloudformation_publish_type}
\alias{cloudformation_publish_type}
\title{Publishes the specified extension to the CloudFormation registry as a
public extension in this Region}
\usage{
cloudformation_publish_type(
  Type = NULL,
  Arn = NULL,
  TypeName = NULL,
  PublicVersionNumber = NULL
)
}
\arguments{
\item{Type}{The type of the extension.

Conditional: You must specify \code{Arn}, or \code{TypeName} and \code{Type}.}

\item{Arn}{The Amazon Resource Name (ARN) of the extension.

Conditional: You must specify \code{Arn}, or \code{TypeName} and \code{Type}.}

\item{TypeName}{The name of the extension.

Conditional: You must specify \code{Arn}, or \code{TypeName} and \code{Type}.}

\item{PublicVersionNumber}{The version number to assign to this version of the extension.

Use the following format, and adhere to semantic versioning when
assigning a version number to your extension:

\code{MAJOR.MINOR.PATCH}

For more information, see \href{https://semver.org/}{Semantic Versioning 2.0.0}.

If you don't specify a version number, CloudFormation increments the
version number by one minor version release.

You cannot specify a version number the first time you publish a type.
CloudFormation automatically sets the first version number to be
\verb{1.0.0}.}
}
\description{
Publishes the specified extension to the CloudFormation registry as a public extension in this Region. Public extensions are available for use by all CloudFormation users. For more information about publishing extensions, see \href{https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html}{Publishing extensions to make them available for public use} in the \emph{CloudFormation Command Line Interface (CLI) User Guide}.

See \url{https://www.paws-r-sdk.com/docs/cloudformation_publish_type/} for full documentation.
}
\keyword{internal}
