% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_set_user_settings}
\alias{cognitoidentityprovider_set_user_settings}
\title{Sets the user settings like multi-factor authentication (MFA)}
\usage{
cognitoidentityprovider_set_user_settings(AccessToken, MFAOptions)
}
\arguments{
\item{AccessToken}{[required] The access token for the set user settings request.}

\item{MFAOptions}{[required] Specifies the options for MFA (e.g., email or phone number).}
}
\description{
Sets the user settings like multi-factor authentication (MFA). If MFA is
to be removed for a particular attribute pass the attribute with code
delivery as null. If null list is passed, all MFA options are removed.
}
\section{Request syntax}{
\preformatted{svc$set_user_settings(
  AccessToken = "string",
  MFAOptions = list(
    list(
      DeliveryMedium = "SMS"|"EMAIL",
      AttributeName = "string"
    )
  )
)
}
}

\keyword{internal}