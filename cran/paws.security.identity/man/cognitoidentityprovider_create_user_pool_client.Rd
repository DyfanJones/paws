% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_create_user_pool_client}
\alias{cognitoidentityprovider_create_user_pool_client}
\title{Creates an app client in a user pool}
\usage{
cognitoidentityprovider_create_user_pool_client(
  UserPoolId,
  ClientName,
  GenerateSecret = NULL,
  RefreshTokenValidity = NULL,
  AccessTokenValidity = NULL,
  IdTokenValidity = NULL,
  TokenValidityUnits = NULL,
  ReadAttributes = NULL,
  WriteAttributes = NULL,
  ExplicitAuthFlows = NULL,
  SupportedIdentityProviders = NULL,
  CallbackURLs = NULL,
  LogoutURLs = NULL,
  DefaultRedirectURI = NULL,
  AllowedOAuthFlows = NULL,
  AllowedOAuthScopes = NULL,
  AllowedOAuthFlowsUserPoolClient = NULL,
  AnalyticsConfiguration = NULL,
  PreventUserExistenceErrors = NULL,
  EnableTokenRevocation = NULL,
  EnablePropagateAdditionalUserContextData = NULL,
  AuthSessionValidity = NULL,
  RefreshTokenRotation = NULL
)
}
\arguments{
\item{UserPoolId}{[required] The ID of the user pool where you want to create an app client.}

\item{ClientName}{[required] A friendly name for the app client that you want to create.}

\item{GenerateSecret}{When \code{true}, generates a client secret for the app client. Client
secrets are used with server-side and machine-to-machine applications.
Client secrets are automatically generated; you can't specify a secret
value. For more information, see \href{https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-client-apps.html#user-pool-settings-client-app-client-types}{App client types}.}

\item{RefreshTokenValidity}{The refresh token time limit. After this limit expires, your user can't
use their refresh token. To specify the time unit for
\code{RefreshTokenValidity} as \code{seconds}, \code{minutes}, \code{hours}, or \code{days}, set
a \code{TokenValidityUnits} value in your API request.

For example, when you set \code{RefreshTokenValidity} as \code{10} and
\code{TokenValidityUnits} as \code{days}, your user can refresh their session and
retrieve new access and ID tokens for 10 days.

The default time unit for \code{RefreshTokenValidity} in an API request is
days. You can't set \code{RefreshTokenValidity} to 0. If you do, Amazon
Cognito overrides the value with the default value of 30 days. \emph{Valid
range} is displayed below in seconds.

If you don't specify otherwise in the configuration of your app client,
your refresh tokens are valid for 30 days.}

\item{AccessTokenValidity}{The access token time limit. After this limit expires, your user can't
use their access token. To specify the time unit for
\code{AccessTokenValidity} as \code{seconds}, \code{minutes}, \code{hours}, or \code{days}, set a
\code{TokenValidityUnits} value in your API request.

For example, when you set \code{AccessTokenValidity} to \code{10} and
\code{TokenValidityUnits} to \code{hours}, your user can authorize access with
their access token for 10 hours.

The default time unit for \code{AccessTokenValidity} in an API request is
hours. \emph{Valid range} is displayed below in seconds.

If you don't specify otherwise in the configuration of your app client,
your access tokens are valid for one hour.}

\item{IdTokenValidity}{The ID token time limit. After this limit expires, your user can't use
their ID token. To specify the time unit for \code{IdTokenValidity} as
\code{seconds}, \code{minutes}, \code{hours}, or \code{days}, set a \code{TokenValidityUnits}
value in your API request.

For example, when you set \code{IdTokenValidity} as \code{10} and
\code{TokenValidityUnits} as \code{hours}, your user can authenticate their
session with their ID token for 10 hours.

The default time unit for \code{IdTokenValidity} in an API request is hours.
\emph{Valid range} is displayed below in seconds.

If you don't specify otherwise in the configuration of your app client,
your ID tokens are valid for one hour.}

\item{TokenValidityUnits}{The units that validity times are represented in. The default unit for
refresh tokens is days, and the default for ID and access tokens are
hours.}

\item{ReadAttributes}{The list of user attributes that you want your app client to have read
access to. After your user authenticates in your app, their access token
authorizes them to read their own attribute value for any attribute in
this list.

When you don't specify the \code{ReadAttributes} for your app client, your
app can read the values of \code{email_verified}, \code{phone_number_verified},
and the standard attributes of your user pool. When your user pool app
client has read access to these default attributes, \code{ReadAttributes}
doesn't return any information. Amazon Cognito only populates
\code{ReadAttributes} in the API response if you have specified your own
custom set of read attributes.}

\item{WriteAttributes}{The list of user attributes that you want your app client to have write
access to. After your user authenticates in your app, their access token
authorizes them to set or modify their own attribute value for any
attribute in this list.

When you don't specify the \code{WriteAttributes} for your app client, your
app can write the values of the Standard attributes of your user pool.
When your user pool has write access to these default attributes,
\code{WriteAttributes} doesn't return any information. Amazon Cognito only
populates \code{WriteAttributes} in the API response if you have specified
your own custom set of write attributes.

If your app client allows users to sign in through an IdP, this array
must include all attributes that you have mapped to IdP attributes.
Amazon Cognito updates mapped attributes when users sign in to your
application through an IdP. If your app client does not have write
access to a mapped attribute, Amazon Cognito throws an error when it
tries to update the attribute. For more information, see \href{https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-specifying-attribute-mapping.html}{Specifying IdP Attribute Mappings for Your user pool}.}

\item{ExplicitAuthFlows}{The \href{https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html}{authentication flows}
that you want your user pool client to support. For each app client in
your user pool, you can sign in your users with any combination of one
or more flows, including with a user name and Secure Remote Password
(SRP), a user name and password, or a custom authentication process that
you define with Lambda functions.

If you don't specify a value for \code{ExplicitAuthFlows}, your app client
supports \code{ALLOW_REFRESH_TOKEN_AUTH}, \code{ALLOW_USER_SRP_AUTH}, and
\code{ALLOW_CUSTOM_AUTH}.

The values for authentication flow options include the following.
\itemize{
\item \code{ALLOW_USER_AUTH}: Enable selection-based sign-in with \code{USER_AUTH}.
This setting covers username-password, secure remote password (SRP),
passwordless, and passkey authentication. This authentiation flow
can do username-password and SRP authentication without other
\code{ExplicitAuthFlows} permitting them. For example users can complete
an SRP challenge through \code{USER_AUTH} without the flow
\code{USER_SRP_AUTH} being active for the app client. This flow doesn't
include \code{CUSTOM_AUTH}.

To activate this setting, your user pool must be in the \href{https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html}{Essentials tier}
or higher.
\item \code{ALLOW_ADMIN_USER_PASSWORD_AUTH}: Enable admin based user password
authentication flow \code{ADMIN_USER_PASSWORD_AUTH}. This setting
replaces the \code{ADMIN_NO_SRP_AUTH} setting. With this authentication
flow, your app passes a user name and password to Amazon Cognito in
the request, instead of using the Secure Remote Password (SRP)
protocol to securely transmit the password.
\item \code{ALLOW_CUSTOM_AUTH}: Enable Lambda trigger based authentication.
\item \code{ALLOW_USER_PASSWORD_AUTH}: Enable user password-based
authentication. In this flow, Amazon Cognito receives the password
in the request instead of using the SRP protocol to verify
passwords.
\item \code{ALLOW_USER_SRP_AUTH}: Enable SRP-based authentication.
\item \code{ALLOW_REFRESH_TOKEN_AUTH}: Enable authflow to refresh tokens.
}

In some environments, you will see the values \code{ADMIN_NO_SRP_AUTH},
\code{CUSTOM_AUTH_FLOW_ONLY}, or \code{USER_PASSWORD_AUTH}. You can't assign these
legacy \code{ExplicitAuthFlows} values to user pool clients at the same time
as values that begin with \code{ALLOW_}, like \code{ALLOW_USER_SRP_AUTH}.}

\item{SupportedIdentityProviders}{A list of provider names for the identity providers (IdPs) that are
supported on this client. The following are supported: \code{COGNITO},
\code{Facebook}, \code{Google}, \code{SignInWithApple}, and \code{LoginWithAmazon}. You can
also specify the names that you configured for the SAML and OIDC IdPs in
your user pool, for example \code{MySAMLIdP} or \code{MyOIDCIdP}.

This parameter sets the IdPs that \href{https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html}{managed login}
will display on the login page for your app client. The removal of
\code{COGNITO} from this list doesn't prevent authentication operations for
local users with the user pools API in an Amazon Web Services SDK. The
only way to prevent SDK-based authentication is to block access with a
\href{https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-waf.html}{WAF rule}.}

\item{CallbackURLs}{A list of allowed redirect, or callback, URLs for managed login
authentication. These URLs are the paths where you want to send your
users' browsers after they complete authentication with managed login or
a third-party IdP. Typically, callback URLs are the home of an
application that uses OAuth or OIDC libraries to process authentication
outcomes.

A redirect URI must meet the following requirements:
\itemize{
\item Be an absolute URI.
\item Be registered with the authorization server. Amazon Cognito doesn't
accept authorization requests with \code{redirect_uri} values that aren't
in the list of \code{CallbackURLs} that you provide in this parameter.
\item Not include a fragment component.
}

See \href{https://datatracker.ietf.org/doc/html/rfc6749#section-3.1.2}{OAuth 2.0 - Redirection Endpoint}.

Amazon Cognito requires HTTPS over HTTP except for http://localhost for
testing purposes only.

App callback URLs such as myapp://example are also supported.}

\item{LogoutURLs}{A list of allowed logout URLs for managed login authentication. When you
pass \code{logout_uri} and \code{client_id} parameters to \verb{/logout}, Amazon
Cognito signs out your user and redirects them to the logout URL. This
parameter describes the URLs that you want to be the permitted targets
of \code{logout_uri}. A typical use of these URLs is when a user selects
"Sign out" and you redirect them to your public homepage. For more
information, see \href{https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html}{Logout endpoint}.}

\item{DefaultRedirectURI}{The default redirect URI. In app clients with one assigned IdP, replaces
\code{redirect_uri} in authentication requests. Must be in the \code{CallbackURLs}
list.}

\item{AllowedOAuthFlows}{The OAuth grant types that you want your app client to generate for
clients in managed login authentication. To create an app client that
generates client credentials grants, you must add \code{client_credentials}
as the only allowed OAuth flow.

\strong{code}

Use a code grant flow, which provides an authorization code as the
response. This code can be exchanged for access tokens with the
\verb{/oauth2/token} endpoint.

\strong{implicit}

Issue the access token, and the ID token when scopes like \code{openid} and
\code{profile} are requested, directly to your user.

\strong{client_credentials}

Issue the access token from the \verb{/oauth2/token} endpoint directly to a
non-person user, authorized by a combination of the client ID and client
secret.}

\item{AllowedOAuthScopes}{The OAuth, OpenID Connect (OIDC), and custom scopes that you want to
permit your app client to authorize access with. Scopes govern access
control to user pool self-service API operations, user data from the
\code{userInfo} endpoint, and third-party APIs. Scope values include \code{phone},
\code{email}, \code{openid}, and \code{profile}. The \code{aws.cognito.signin.user.admin}
scope authorizes user self-service operations. Custom scopes with
resource servers authorize access to external APIs.}

\item{AllowedOAuthFlowsUserPoolClient}{Set to \code{true} to use OAuth 2.0 authorization server features in your app
client.

This parameter must have a value of \code{true} before you can configure the
following features in your app client.
\itemize{
\item \code{CallBackURLs}: Callback URLs.
\item \code{LogoutURLs}: Sign-out redirect URLs.
\item \code{AllowedOAuthScopes}: OAuth 2.0 scopes.
\item \code{AllowedOAuthFlows}: Support for authorization code, implicit, and
client credentials OAuth 2.0 grants.
}

To use authorization server features, configure one of these features in
the Amazon Cognito console or set \code{AllowedOAuthFlowsUserPoolClient} to
\code{true} in a
\code{\link[=cognitoidentityprovider_create_user_pool_client]{create_user_pool_client}}
or
\code{\link[=cognitoidentityprovider_update_user_pool_client]{update_user_pool_client}}
API request. If you don't set a value for
\code{AllowedOAuthFlowsUserPoolClient} in a request with the CLI or SDKs, it
defaults to \code{false}. When \code{false}, only SDK-based API sign-in is
permitted.}

\item{AnalyticsConfiguration}{The user pool analytics configuration for collecting metrics and sending
them to your Amazon Pinpoint campaign.

In Amazon Web Services Regions where Amazon Pinpoint isn't available,
user pools might not have access to analytics or might be configurable
with campaigns in the US East (N. Virginia) Region. For more
information, see \href{https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-pinpoint-integration.html}{Using Amazon Pinpoint analytics}.}

\item{PreventUserExistenceErrors}{When \code{ENABLED}, suppresses messages that might indicate a valid user
exists when someone attempts sign-in. This parameters sets your
preference for the errors and responses that you want Amazon Cognito
APIs to return during authentication, account confirmation, and password
recovery when the user doesn't exist in the user pool. When set to
\code{ENABLED} and the user doesn't exist, authentication returns an error
indicating either the username or password was incorrect. Account
confirmation and password recovery return a response indicating a code
was sent to a simulated destination. When set to \code{LEGACY}, those APIs
return a \code{UserNotFoundException} exception if the user doesn't exist in
the user pool.

Defaults to \code{LEGACY}.}

\item{EnableTokenRevocation}{Activates or deactivates \href{https://docs.aws.amazon.com/cognito/latest/developerguide/token-revocation.html}{token revocation}
in the target app client.

If you don't include this parameter, token revocation is automatically
activated for the new user pool client.}

\item{EnablePropagateAdditionalUserContextData}{When \code{true}, your application can include additional \code{UserContextData}
in authentication requests. This data includes the IP address, and
contributes to analysis by threat protection features. For more
information about propagation of user context data, see \href{https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html#user-pool-settings-adaptive-authentication-device-fingerprint}{Adding session data to API requests}.
If you don’t include this parameter, you can't send the source IP
address to Amazon Cognito threat protection features. You can only
activate \code{EnablePropagateAdditionalUserContextData} in an app client
that has a client secret.}

\item{AuthSessionValidity}{Amazon Cognito creates a session token for each API request in an
authentication flow. \code{AuthSessionValidity} is the duration, in minutes,
of that session token. Your user pool native user must respond to each
authentication challenge before the session expires.}

\item{RefreshTokenRotation}{The configuration of your app client for refresh token rotation. When
enabled, your app client issues new ID, access, and refresh tokens when
users renew their sessions with refresh tokens. When disabled, token
refresh issues only ID and access tokens.}
}
\description{
Creates an app client in a user pool. This operation sets basic and advanced configuration options.

See \url{https://www.paws-r-sdk.com/docs/cognitoidentityprovider_create_user_pool_client/} for full documentation.
}
\keyword{internal}
