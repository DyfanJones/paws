% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kafka_operations.R
\name{kafka_list_cluster_operations}
\alias{kafka_list_cluster_operations}
\title{Returns a list of all the operations that have been performed on the
specified MSK cluster}
\usage{
kafka_list_cluster_operations(ClusterArn, MaxResults = NULL, NextToken = NULL)
}
\arguments{
\item{ClusterArn}{[required] The Amazon Resource Name (ARN) that uniquely identifies the cluster.}

\item{MaxResults}{The maximum number of results to return in the response. If there are
more results, the response includes a NextToken parameter.}

\item{NextToken}{The paginated results marker. When the result of the operation is
truncated, the call returns NextToken in the response. To get the next
batch, provide this token in your next request.}
}
\description{
Returns a list of all the operations that have been performed on the specified MSK cluster.

See \url{https://www.paws-r-sdk.com/docs/kafka_list_cluster_operations/} for full documentation.
}
\keyword{internal}
