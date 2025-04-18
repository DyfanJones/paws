% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_set_ui_customization}
\alias{cognitoidentityprovider_set_ui_customization}
\title{Sets the user interface (UI) customization information for a user pool's
built-in app UI}
\usage{
cognitoidentityprovider_set_ui_customization(
  UserPoolId,
  ClientId = NULL,
  CSS = NULL,
  ImageFile = NULL
)
}
\arguments{
\item{UserPoolId}{[required] The ID of the user pool.}

\item{ClientId}{The client ID for the client app.}

\item{CSS}{The CSS values in the UI customization.}

\item{ImageFile}{The uploaded logo image for the UI customization.}
}
\description{
Sets the user interface (UI) customization information for a user pool's built-in app UI.

See \url{https://www.paws-r-sdk.com/docs/cognitoidentityprovider_set_ui_customization/} for full documentation.
}
\keyword{internal}
