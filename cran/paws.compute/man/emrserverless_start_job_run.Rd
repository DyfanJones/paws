% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/emrserverless_operations.R
\name{emrserverless_start_job_run}
\alias{emrserverless_start_job_run}
\title{Starts a job run}
\usage{
emrserverless_start_job_run(
  applicationId,
  clientToken,
  executionRoleArn,
  jobDriver = NULL,
  configurationOverrides = NULL,
  tags = NULL,
  executionTimeoutMinutes = NULL,
  name = NULL,
  mode = NULL,
  retryPolicy = NULL
)
}
\arguments{
\item{applicationId}{[required] The ID of the application on which to run the job.}

\item{clientToken}{[required] The client idempotency token of the job run to start. Its value must be
unique for each request.}

\item{executionRoleArn}{[required] The execution role ARN for the job run.}

\item{jobDriver}{The job driver for the job run.}

\item{configurationOverrides}{The configuration overrides for the job run.}

\item{tags}{The tags assigned to the job run.}

\item{executionTimeoutMinutes}{The maximum duration for the job run to run. If the job run runs beyond
this duration, it will be automatically cancelled.}

\item{name}{The optional job run name. This doesn't have to be unique.}

\item{mode}{The mode of the job run when it starts.}

\item{retryPolicy}{The retry policy when job run starts.}
}
\description{
Starts a job run.

See \url{https://www.paws-r-sdk.com/docs/emrserverless_start_job_run/} for full documentation.
}
\keyword{internal}
