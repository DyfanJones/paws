% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bedrockagentruntime_operations.R
\name{bedrockagentruntime_put_invocation_step}
\alias{bedrockagentruntime_put_invocation_step}
\title{Add an invocation step to an invocation in a session}
\usage{
bedrockagentruntime_put_invocation_step(
  invocationIdentifier,
  invocationStepId = NULL,
  invocationStepTime,
  payload,
  sessionIdentifier
)
}
\arguments{
\item{invocationIdentifier}{[required] The unique identifier (in UUID format) of the invocation to add the
invocation step to.}

\item{invocationStepId}{The unique identifier of the invocation step in UUID format.}

\item{invocationStepTime}{[required] The timestamp for when the invocation step occurred.}

\item{payload}{[required] The payload for the invocation step, including text and images for the
interaction.}

\item{sessionIdentifier}{[required] The unique identifier for the session to add the invocation step to. You
can specify either the session's \code{sessionId} or its Amazon Resource Name
(ARN).}
}
\description{
Add an invocation step to an invocation in a session. An invocation step stores fine-grained state checkpoints, including text and images, for each interaction. For more information about sessions, see \href{https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html}{Store and retrieve conversation history and context with Amazon Bedrock sessions}.

See \url{https://www.paws-r-sdk.com/docs/bedrockagentruntime_put_invocation_step/} for full documentation.
}
\keyword{internal}
