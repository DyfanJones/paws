% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ivsrealtime_operations.R
\name{ivsrealtime_create_participant_token}
\alias{ivsrealtime_create_participant_token}
\title{Creates an additional token for a specified stage}
\usage{
ivsrealtime_create_participant_token(
  stageArn,
  duration = NULL,
  userId = NULL,
  attributes = NULL,
  capabilities = NULL
)
}
\arguments{
\item{stageArn}{[required] ARN of the stage to which this token is scoped.}

\item{duration}{Duration (in minutes), after which the token expires. Default: 720 (12
hours).}

\item{userId}{Name that can be specified to help identify the token. This can be any
UTF-8 encoded text. \emph{This field is exposed to all stage participants and
should not be used for personally identifying, confidential, or
sensitive information.}}

\item{attributes}{Application-provided attributes to encode into the token and attach to a
stage. Map keys and values can contain UTF-8 encoded text. The maximum
length of this field is 1 KB total. \emph{This field is exposed to all stage
participants and should not be used for personally identifying,
confidential, or sensitive information.}}

\item{capabilities}{Set of capabilities that the user is allowed to perform in the stage.
Default: \verb{PUBLISH, SUBSCRIBE}.}
}
\description{
Creates an additional token for a specified stage. This can be done after stage creation or when tokens expire. Tokens always are scoped to the stage for which they are created.

See \url{https://www.paws-r-sdk.com/docs/ivsrealtime_create_participant_token/} for full documentation.
}
\keyword{internal}
