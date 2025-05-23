% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bedrockagentruntime_operations.R
\name{bedrockagentruntime_retrieve_and_generate_stream}
\alias{bedrockagentruntime_retrieve_and_generate_stream}
\title{Queries a knowledge base and generates responses based on the retrieved
results, with output in streaming format}
\usage{
bedrockagentruntime_retrieve_and_generate_stream(
  input,
  retrieveAndGenerateConfiguration = NULL,
  sessionConfiguration = NULL,
  sessionId = NULL
)
}
\arguments{
\item{input}{[required] Contains the query to be made to the knowledge base.}

\item{retrieveAndGenerateConfiguration}{Contains configurations for the knowledge base query and retrieval
process. For more information, see \href{https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html}{Query configurations}.}

\item{sessionConfiguration}{Contains details about the session with the knowledge base.}

\item{sessionId}{The unique identifier of the session. When you first make a
\code{\link[=bedrockagentruntime_retrieve_and_generate]{retrieve_and_generate}}
request, Amazon Bedrock automatically generates this value. You must
reuse this value for all subsequent requests in the same conversational
session. This value allows Amazon Bedrock to maintain context and
knowledge from previous interactions. You can't explicitly set the
\code{sessionId} yourself.}
}
\description{
Queries a knowledge base and generates responses based on the retrieved results, with output in streaming format.

See \url{https://www.paws-r-sdk.com/docs/bedrockagentruntime_retrieve_and_generate_stream/} for full documentation.
}
\keyword{internal}
