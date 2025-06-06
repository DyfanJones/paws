% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentity_service.R
\name{cognitoidentity}
\alias{cognitoidentity}
\title{Amazon Cognito Identity}
\usage{
cognitoidentity(
  config = list(),
  credentials = list(),
  endpoint = NULL,
  region = NULL
)
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.
\itemize{
\item{\strong{credentials}: \itemize{
\item{\strong{creds}: \itemize{
\item{\strong{access_key_id}: AWS access key ID}
\item{\strong{secret_access_key}: AWS secret access key}
\item{\strong{session_token}: AWS temporary session token}
}}
\item{\strong{profile}: The name of a profile to use. If not given, then the default profile is used.}
\item{\strong{anonymous}: Set anonymous credentials.}
}}
\item{\strong{endpoint}: The complete URL to use for the constructed client.}
\item{\strong{region}: The AWS Region used in instantiating the client.}
\item{\strong{close_connection}: Immediately close all HTTP connections.}
\item{\strong{timeout}: The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
\item{\strong{s3_force_path_style}: Set this to \code{true} to force the request to use path-style addressing, i.e. \verb{http://s3.amazonaws.com/BUCKET/KEY}.}
\item{\strong{sts_regional_endpoint}: Set sts regional endpoint resolver to regional or legacy \url{https://docs.aws.amazon.com/sdkref/latest/guide/feature-sts-regionalized-endpoints.html}}
}}

\item{credentials}{Optional credentials shorthand for the config parameter
\itemize{
\item{\strong{creds}: \itemize{
\item{\strong{access_key_id}: AWS access key ID}
\item{\strong{secret_access_key}: AWS secret access key}
\item{\strong{session_token}: AWS temporary session token}
}}
\item{\strong{profile}: The name of a profile to use. If not given, then the default profile is used.}
\item{\strong{anonymous}: Set anonymous credentials.}
}}

\item{endpoint}{Optional shorthand for complete URL to use for the constructed client.}

\item{region}{Optional shorthand for AWS Region used in instantiating the client.}
}
\value{
A client for the service. You can call the service's operations using
syntax like \code{svc$operation(...)}, where \code{svc} is the name you've assigned
to the client. The available operations are listed in the
Operations section.
}
\description{
Amazon Cognito Federated Identities

Amazon Cognito Federated Identities is a web service that delivers
scoped temporary credentials to mobile devices and other untrusted
environments. It uniquely identifies a device and supplies the user with
a consistent identity over the lifetime of an application.

Using Amazon Cognito Federated Identities, you can enable authentication
with one or more third-party identity providers (Facebook, Google, or
Login with Amazon) or an Amazon Cognito user pool, and you can also
choose to support unauthenticated access from your app. Cognito delivers
a unique identifier for each user and acts as an OpenID token provider
trusted by Security Token Service (STS) to access temporary,
limited-privilege Amazon Web Services credentials.

For a description of the authentication flow from the Amazon Cognito
Developer Guide see \href{https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html}{Authentication Flow}.

For more information see \href{https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html}{Amazon Cognito Federated Identities}.
}
\section{Service syntax}{


\if{html}{\out{<div class="sourceCode">}}\preformatted{svc <- cognitoidentity(
  config = list(
    credentials = list(
      creds = list(
        access_key_id = "string",
        secret_access_key = "string",
        session_token = "string"
      ),
      profile = "string",
      anonymous = "logical"
    ),
    endpoint = "string",
    region = "string",
    close_connection = "logical",
    timeout = "numeric",
    s3_force_path_style = "logical",
    sts_regional_endpoint = "string"
  ),
  credentials = list(
    creds = list(
      access_key_id = "string",
      secret_access_key = "string",
      session_token = "string"
    ),
    profile = "string",
    anonymous = "logical"
  ),
  endpoint = "string",
  region = "string"
)
}\if{html}{\out{</div>}}
}

\section{Operations}{

\tabular{ll}{
\link[=cognitoidentity_create_identity_pool]{create_identity_pool} \tab Creates a new identity pool\cr
\link[=cognitoidentity_delete_identities]{delete_identities} \tab Deletes identities from an identity pool\cr
\link[=cognitoidentity_delete_identity_pool]{delete_identity_pool} \tab Deletes an identity pool\cr
\link[=cognitoidentity_describe_identity]{describe_identity} \tab Returns metadata related to the given identity, including when the identity was created and any associated linked logins\cr
\link[=cognitoidentity_describe_identity_pool]{describe_identity_pool} \tab Gets details about a particular identity pool, including the pool name, ID description, creation date, and current number of users\cr
\link[=cognitoidentity_get_credentials_for_identity]{get_credentials_for_identity} \tab Returns credentials for the provided identity ID\cr
\link[=cognitoidentity_get_id]{get_id} \tab Generates (or retrieves) IdentityID\cr
\link[=cognitoidentity_get_identity_pool_roles]{get_identity_pool_roles} \tab Gets the roles for an identity pool\cr
\link[=cognitoidentity_get_open_id_token]{get_open_id_token} \tab Gets an OpenID token, using a known Cognito ID\cr
\link[=cognitoidentity_get_open_id_token_for_developer_identity]{get_open_id_token_for_developer_identity} \tab Registers (or retrieves) a Cognito IdentityId and an OpenID Connect token for a user authenticated by your backend authentication process\cr
\link[=cognitoidentity_get_principal_tag_attribute_map]{get_principal_tag_attribute_map} \tab Use GetPrincipalTagAttributeMap to list all mappings between PrincipalTags and user attributes\cr
\link[=cognitoidentity_list_identities]{list_identities} \tab Lists the identities in an identity pool\cr
\link[=cognitoidentity_list_identity_pools]{list_identity_pools} \tab Lists all of the Cognito identity pools registered for your account\cr
\link[=cognitoidentity_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags that are assigned to an Amazon Cognito identity pool\cr
\link[=cognitoidentity_lookup_developer_identity]{lookup_developer_identity} \tab Retrieves the IdentityID associated with a DeveloperUserIdentifier or the list of DeveloperUserIdentifier values associated with an IdentityId for an existing identity\cr
\link[=cognitoidentity_merge_developer_identities]{merge_developer_identities} \tab Merges two users having different IdentityIds, existing in the same identity pool, and identified by the same developer provider\cr
\link[=cognitoidentity_set_identity_pool_roles]{set_identity_pool_roles} \tab Sets the roles for an identity pool\cr
\link[=cognitoidentity_set_principal_tag_attribute_map]{set_principal_tag_attribute_map} \tab You can use this operation to use default (username and clientID) attribute or custom attribute mappings\cr
\link[=cognitoidentity_tag_resource]{tag_resource} \tab Assigns a set of tags to the specified Amazon Cognito identity pool\cr
\link[=cognitoidentity_unlink_developer_identity]{unlink_developer_identity} \tab Unlinks a DeveloperUserIdentifier from an existing identity\cr
\link[=cognitoidentity_unlink_identity]{unlink_identity} \tab Unlinks a federated identity from an existing account\cr
\link[=cognitoidentity_untag_resource]{untag_resource} \tab Removes the specified tags from the specified Amazon Cognito identity pool\cr
\link[=cognitoidentity_update_identity_pool]{update_identity_pool} \tab Updates the configuration of an identity pool
}
}

\examples{
\dontrun{
svc <- cognitoidentity()
svc$create_identity_pool(
  Foo = 123
)
}

}
