% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssooidc_operations.R
\name{ssooidc_register_client}
\alias{ssooidc_register_client}
\title{Registers a public client with IAM Identity Center}
\usage{
ssooidc_register_client(
  clientName,
  clientType,
  scopes = NULL,
  redirectUris = NULL,
  grantTypes = NULL,
  issuerUrl = NULL,
  entitledApplicationArn = NULL
)
}
\arguments{
\item{clientName}{[required] The friendly name of the client.}

\item{clientType}{[required] The type of client. The service supports only \code{public} as a client type.
Anything other than public will be rejected by the service.}

\item{scopes}{The list of scopes that are defined by the client. Upon authorization,
this list is used to restrict permissions when granting an access token.}

\item{redirectUris}{The list of redirect URI that are defined by the client. At completion
of authorization, this list is used to restrict what locations the user
agent can be redirected back to.}

\item{grantTypes}{The list of OAuth 2.0 grant types that are defined by the client. This
list is used to restrict the token granting flows available to the
client. Supports the following OAuth 2.0 grant types: Authorization
Code, Device Code, and Refresh Token.
\itemize{
\item Authorization Code - \code{authorization_code}
\item Device Code - \code{urn:ietf:params:oauth:grant-type:device_code}
\item Refresh Token - \code{refresh_token}
}}

\item{issuerUrl}{The IAM Identity Center Issuer URL associated with an instance of IAM
Identity Center. This value is needed for user access to resources
through the client.}

\item{entitledApplicationArn}{This IAM Identity Center application ARN is used to define
administrator-managed configuration for public client access to
resources. At authorization, the scopes, grants, and redirect URI
available to this client will be restricted by this application
resource.}
}
\description{
Registers a public client with IAM Identity Center. This allows clients to perform authorization using the authorization code grant with Proof Key for Code Exchange (PKCE) or the device code grant.

See \url{https://www.paws-r-sdk.com/docs/ssooidc_register_client/} for full documentation.
}
\keyword{internal}
