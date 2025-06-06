% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_describe_cluster_scheduler_config}
\alias{sagemaker_describe_cluster_scheduler_config}
\title{Description of the cluster policy}
\usage{
sagemaker_describe_cluster_scheduler_config(
  ClusterSchedulerConfigId,
  ClusterSchedulerConfigVersion = NULL
)
}
\arguments{
\item{ClusterSchedulerConfigId}{[required] ID of the cluster policy.}

\item{ClusterSchedulerConfigVersion}{Version of the cluster policy.}
}
\description{
Description of the cluster policy. This policy is used for task prioritization and fair-share allocation. This helps prioritize critical workloads and distributes idle compute across entities.

See \url{https://www.paws-r-sdk.com/docs/sagemaker_describe_cluster_scheduler_config/} for full documentation.
}
\keyword{internal}
