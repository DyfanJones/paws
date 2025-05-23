% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/batch_operations.R
\name{batch_register_job_definition}
\alias{batch_register_job_definition}
\title{Registers an Batch job definition}
\usage{
batch_register_job_definition(
  jobDefinitionName,
  type,
  parameters = NULL,
  schedulingPriority = NULL,
  containerProperties = NULL,
  nodeProperties = NULL,
  retryStrategy = NULL,
  propagateTags = NULL,
  timeout = NULL,
  tags = NULL,
  platformCapabilities = NULL,
  eksProperties = NULL,
  ecsProperties = NULL,
  consumableResourceProperties = NULL
)
}
\arguments{
\item{jobDefinitionName}{[required] The name of the job definition to register. It can be up to 128 letters
long. It can contain uppercase and lowercase letters, numbers, hyphens
(-), and underscores (_).}

\item{type}{[required] The type of job definition. For more information about multi-node
parallel jobs, see \href{https://docs.aws.amazon.com/batch/latest/userguide/}{Creating a multi-node parallel job definition} in the
\emph{Batch User Guide}.
\itemize{
\item If the value is \code{container}, then one of the following is required:
\code{containerProperties}, \code{ecsProperties}, or \code{eksProperties}.
\item If the value is \code{multinode}, then \code{nodeProperties} is required.
}

If the job is run on Fargate resources, then \code{multinode} isn't
supported.}

\item{parameters}{Default parameter substitution placeholders to set in the job
definition. Parameters are specified as a key-value pair mapping.
Parameters in a \code{\link[=batch_submit_job]{submit_job}} request override any
corresponding parameter defaults from the job definition.}

\item{schedulingPriority}{The scheduling priority for jobs that are submitted with this job
definition. This only affects jobs in job queues with a fair-share
policy. Jobs with a higher scheduling priority are scheduled before jobs
with a lower scheduling priority.

The minimum supported value is 0 and the maximum supported value is
9999.}

\item{containerProperties}{An object with properties specific to Amazon ECS-based single-node
container-based jobs. If the job definition's \code{type} parameter is
\code{container}, then you must specify either \code{containerProperties} or
\code{nodeProperties}. This must not be specified for Amazon EKS-based job
definitions.

If the job runs on Fargate resources, then you must not specify
\code{nodeProperties}; use only \code{containerProperties}.}

\item{nodeProperties}{An object with properties specific to multi-node parallel jobs. If you
specify node properties for a job, it becomes a multi-node parallel job.
For more information, see \href{https://docs.aws.amazon.com/batch/latest/userguide/multi-node-parallel-jobs.html}{Multi-node Parallel Jobs}
in the \emph{Batch User Guide}.

If the job runs on Fargate resources, then you must not specify
\code{nodeProperties}; use \code{containerProperties} instead.

If the job runs on Amazon EKS resources, then you must not specify
\code{nodeProperties}.}

\item{retryStrategy}{The retry strategy to use for failed jobs that are submitted with this
job definition. Any retry strategy that's specified during a
\code{\link[=batch_submit_job]{submit_job}} operation overrides the retry strategy
defined here. If a job is terminated due to a timeout, it isn't retried.}

\item{propagateTags}{Specifies whether to propagate the tags from the job or job definition
to the corresponding Amazon ECS task. If no value is specified, the tags
are not propagated. Tags can only be propagated to the tasks during task
creation. For tags with the same name, job tags are given priority over
job definitions tags. If the total number of combined tags from the job
and job definition is over 50, the job is moved to the \code{FAILED} state.

If the job runs on Amazon EKS resources, then you must not specify
\code{propagateTags}.}

\item{timeout}{The timeout configuration for jobs that are submitted with this job
definition, after which Batch terminates your jobs if they have not
finished. If a job is terminated due to a timeout, it isn't retried. The
minimum value for the timeout is 60 seconds. Any timeout configuration
that's specified during a \code{\link[=batch_submit_job]{submit_job}} operation
overrides the timeout configuration defined here. For more information,
see \href{https://docs.aws.amazon.com/batch/latest/userguide/job_timeouts.html}{Job Timeouts}
in the \emph{Batch User Guide}.}

\item{tags}{The tags that you apply to the job definition to help you categorize and
organize your resources. Each tag consists of a key and an optional
value. For more information, see \href{https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html}{Tagging Amazon Web Services Resources}
in \emph{Batch User Guide}.}

\item{platformCapabilities}{The platform capabilities required by the job definition. If no value is
specified, it defaults to \code{EC2}. To run the job on Fargate resources,
specify \code{FARGATE}.

If the job runs on Amazon EKS resources, then you must not specify
\code{platformCapabilities}.}

\item{eksProperties}{An object with properties that are specific to Amazon EKS-based jobs.
This must not be specified for Amazon ECS based job definitions.}

\item{ecsProperties}{An object with properties that are specific to Amazon ECS-based jobs.
This must not be specified for Amazon EKS-based job definitions.}

\item{consumableResourceProperties}{Contains a list of consumable resources required by the job.}
}
\description{
Registers an Batch job definition.

See \url{https://www.paws-r-sdk.com/docs/batch_register_job_definition/} for full documentation.
}
\keyword{internal}
