% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/entityresolution_operations.R
\name{entityresolution_create_matching_workflow}
\alias{entityresolution_create_matching_workflow}
\title{Creates a MatchingWorkflow object which stores the configuration of the
data processing job to be run}
\usage{
entityresolution_create_matching_workflow(
  workflowName,
  description = NULL,
  inputSourceConfig,
  outputSourceConfig,
  resolutionTechniques,
  incrementalRunConfig = NULL,
  roleArn,
  tags = NULL
)
}
\arguments{
\item{workflowName}{[required] The name of the workflow. There can't be multiple \code{MatchingWorkflows}
with the same name.}

\item{description}{A description of the workflow.}

\item{inputSourceConfig}{[required] A list of \code{InputSource} objects, which have the fields \code{InputSourceARN}
and \code{SchemaName}.}

\item{outputSourceConfig}{[required] A list of \code{OutputSource} objects, each of which contains fields
\code{OutputS3Path}, \code{ApplyNormalization}, and \code{Output}.}

\item{resolutionTechniques}{[required] An object which defines the \code{resolutionType} and the
\code{ruleBasedProperties}.}

\item{incrementalRunConfig}{An object which defines an incremental run type and has only
\code{incrementalRunType} as a field.}

\item{roleArn}{[required] The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
assumes this role to create resources on your behalf as part of workflow
execution.}

\item{tags}{The tags used to organize, track, or control access for this resource.}
}
\description{
Creates a \code{MatchingWorkflow} object which stores the configuration of the data processing job to be run. It is important to note that there should not be a pre-existing \code{MatchingWorkflow} with the same name. To modify an existing workflow, utilize the \code{\link[=entityresolution_update_matching_workflow]{update_matching_workflow}} API.

See \url{https://www.paws-r-sdk.com/docs/entityresolution_create_matching_workflow/} for full documentation.
}
\keyword{internal}
