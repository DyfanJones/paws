% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bedrockagentruntime_operations.R
\name{bedrockagentruntime_update_session}
\alias{bedrockagentruntime_update_session}
\title{Updates the metadata or encryption settings of a session}
\usage{
bedrockagentruntime_update_session(sessionIdentifier, sessionMetadata = NULL)
}
\arguments{
\item{sessionIdentifier}{[required] The unique identifier of the session to modify. You can specify either
the session's \code{sessionId} or its Amazon Resource Name (ARN).}

\item{sessionMetadata}{A map of key-value pairs containing attributes to be persisted across
the session. For example the user's ID, their language preference, and
the type of device they are using.}
}
\description{
Updates the metadata or encryption settings of a session. For more information about sessions, see \href{https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html}{Store and retrieve conversation history and context with Amazon Bedrock sessions}.

See \url{https://www.paws-r-sdk.com/docs/bedrockagentruntime_update_session/} for full documentation.
}
\keyword{internal}
