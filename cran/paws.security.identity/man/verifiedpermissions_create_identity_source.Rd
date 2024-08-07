% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/verifiedpermissions_operations.R
\name{verifiedpermissions_create_identity_source}
\alias{verifiedpermissions_create_identity_source}
\title{Adds an identity source to a policy store–an Amazon Cognito user pool or
OpenID Connect (OIDC) identity provider (IdP)}
\usage{
verifiedpermissions_create_identity_source(
  clientToken = NULL,
  policyStoreId,
  configuration,
  principalEntityType = NULL
)
}
\arguments{
\item{clientToken}{Specifies a unique, case-sensitive ID that you provide to ensure the
idempotency of the request. This lets you safely retry the request
without accidentally performing the same operation a second time.
Passing the same value to a later call to an operation requires that you
also pass the same value for all other parameters. We recommend that you
use a \href{https://en.wikipedia.org/wiki/Universally_unique_identifier}{UUID type of value.}.

If you don't provide this value, then Amazon Web Services generates a
random one for you.

If you retry the operation with the same \code{ClientToken}, but with
different parameters, the retry fails with an \code{ConflictException} error.

Verified Permissions recognizes a \code{ClientToken} for eight hours. After
eight hours, the next request with the same parameters performs the
operation again regardless of the value of \code{ClientToken}.}

\item{policyStoreId}{[required] Specifies the ID of the policy store in which you want to store this
identity source. Only policies and requests made using this policy store
can reference identities from the identity provider configured in the
new identity source.}

\item{configuration}{[required] Specifies the details required to communicate with the identity provider
(IdP) associated with this identity source.}

\item{principalEntityType}{Specifies the namespace and data type of the principals generated for
identities authenticated by the new identity source.}
}
\description{
Adds an identity source to a policy store–an Amazon Cognito user pool or OpenID Connect (OIDC) identity provider (IdP).

See \url{https://www.paws-r-sdk.com/docs/verifiedpermissions_create_identity_source/} for full documentation.
}
\keyword{internal}
