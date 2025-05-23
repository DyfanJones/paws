% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bedrockagent_operations.R
\name{bedrockagent_delete_prompt}
\alias{bedrockagent_delete_prompt}
\title{Deletes a prompt or a version of it, depending on whether you include
the promptVersion field or not}
\usage{
bedrockagent_delete_prompt(promptIdentifier, promptVersion = NULL)
}
\arguments{
\item{promptIdentifier}{[required] The unique identifier of the prompt.}

\item{promptVersion}{The version of the prompt to delete. To delete the prompt, omit this
field.}
}
\description{
Deletes a prompt or a version of it, depending on whether you include the \code{promptVersion} field or not. For more information, see \href{https://docs.aws.amazon.com/bedrock/latest/userguide/#prompt-management-delete.html}{Delete prompts from the Prompt management tool} and \href{https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-deploy.html#prompt-management-versions-delete.html}{Delete a version of a prompt from the Prompt management tool} in the Amazon Bedrock User Guide.

See \url{https://www.paws-r-sdk.com/docs/bedrockagent_delete_prompt/} for full documentation.
}
\keyword{internal}
