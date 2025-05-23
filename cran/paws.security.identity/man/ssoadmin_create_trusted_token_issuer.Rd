% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssoadmin_operations.R
\name{ssoadmin_create_trusted_token_issuer}
\alias{ssoadmin_create_trusted_token_issuer}
\title{Creates a connection to a trusted token issuer in an instance of IAM
Identity Center}
\usage{
ssoadmin_create_trusted_token_issuer(
  InstanceArn,
  Name,
  TrustedTokenIssuerType,
  TrustedTokenIssuerConfiguration,
  ClientToken = NULL,
  Tags = NULL
)
}
\arguments{
\item{InstanceArn}{[required] Specifies the ARN of the instance of IAM Identity Center to contain the
new trusted token issuer configuration.}

\item{Name}{[required] Specifies the name of the new trusted token issuer configuration.}

\item{TrustedTokenIssuerType}{[required] Specifies the type of the new trusted token issuer.}

\item{TrustedTokenIssuerConfiguration}{[required] Specifies settings that apply to the new trusted token issuer
configuration. The settings that are available depend on what
\code{TrustedTokenIssuerType} you specify.}

\item{ClientToken}{Specifies a unique, case-sensitive ID that you provide to ensure the
idempotency of the request. This lets you safely retry the request
without accidentally performing the same operation a second time.
Passing the same value to a later call to an operation requires that you
also pass the same value for all other parameters. We recommend that you
use a \href{https://en.wikipedia.org/wiki/Universally_unique_identifier}{UUID type of value.}.

If you don't provide this value, then Amazon Web Services generates a
random one for you.

If you retry the operation with the same \code{ClientToken}, but with
different parameters, the retry fails with an
\code{IdempotentParameterMismatch} error.}

\item{Tags}{Specifies tags to be attached to the new trusted token issuer
configuration.}
}
\description{
Creates a connection to a trusted token issuer in an instance of IAM Identity Center. A trusted token issuer enables trusted identity propagation to be used with applications that authenticate outside of Amazon Web Services.

See \url{https://www.paws-r-sdk.com/docs/ssoadmin_create_trusted_token_issuer/} for full documentation.
}
\keyword{internal}
