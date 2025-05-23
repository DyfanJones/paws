% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_update_user_attributes}
\alias{cognitoidentityprovider_update_user_attributes}
\title{Updates the currently signed-in user's attributes}
\usage{
cognitoidentityprovider_update_user_attributes(
  UserAttributes,
  AccessToken,
  ClientMetadata = NULL
)
}
\arguments{
\item{UserAttributes}{[required] An array of name-value pairs representing user attributes.

For custom attributes, you must add a \verb{custom:} prefix to the attribute
name.

If you have set an attribute to require verification before Amazon
Cognito updates its value, this request doesn’t immediately update the
value of that attribute. After your user receives and responds to a
verification message to verify the new value, Amazon Cognito updates the
attribute value. Your user can sign in and receive messages with the
original attribute value until they verify the new value.}

\item{AccessToken}{[required] A valid access token that Amazon Cognito issued to the currently
signed-in user. Must include a scope claim for
\code{aws.cognito.signin.user.admin}.}

\item{ClientMetadata}{A map of custom key-value pairs that you can provide as input for any
custom workflows that this action initiates.

You create custom workflows by assigning Lambda functions to user pool
triggers. When you use the UpdateUserAttributes API action, Amazon
Cognito invokes the function that is assigned to the \emph{custom message}
trigger. When Amazon Cognito invokes this function, it passes a JSON
payload, which the function receives as input. This payload contains a
\code{clientMetadata} attribute, which provides the data that you assigned to
the ClientMetadata parameter in your UpdateUserAttributes request. In
your function code in Lambda, you can process the \code{clientMetadata} value
to enhance your workflow for your specific needs.

For more information, see \href{https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-working-with-lambda-triggers.html}{Using Lambda triggers}
in the \emph{Amazon Cognito Developer Guide}.

When you use the \code{ClientMetadata} parameter, note that Amazon Cognito
won't do the following:
\itemize{
\item Store the \code{ClientMetadata} value. This data is available only to
Lambda triggers that are assigned to a user pool to support custom
workflows. If your user pool configuration doesn't include triggers,
the \code{ClientMetadata} parameter serves no purpose.
\item Validate the \code{ClientMetadata} value.
\item Encrypt the \code{ClientMetadata} value. Don't send sensitive information
in this parameter.
}}
}
\description{
Updates the currently signed-in user's attributes. To delete an attribute from the user, submit the attribute in your API request with a blank value.

See \url{https://www.paws-r-sdk.com/docs/cognitoidentityprovider_update_user_attributes/} for full documentation.
}
\keyword{internal}
