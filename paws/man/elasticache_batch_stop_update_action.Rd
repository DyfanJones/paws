% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elasticache_operations.R
\name{elasticache_batch_stop_update_action}
\alias{elasticache_batch_stop_update_action}
\title{Stop the service update}
\usage{
elasticache_batch_stop_update_action(ReplicationGroupIds,
  CacheClusterIds, ServiceUpdateName)
}
\arguments{
\item{ReplicationGroupIds}{The replication group IDs}

\item{CacheClusterIds}{The cache cluster IDs}

\item{ServiceUpdateName}{[required] The unique ID of the service update}
}
\description{
Stop the service update. For more information on service updates and
stopping them, see \href{https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/stopping-self-service-updates.html}{Stopping Service Updates}.
}
\section{Request syntax}{
\preformatted{svc$batch_stop_update_action(
  ReplicationGroupIds = list(
    "string"
  ),
  CacheClusterIds = list(
    "string"
  ),
  ServiceUpdateName = "string"
)
}
}

\keyword{internal}
