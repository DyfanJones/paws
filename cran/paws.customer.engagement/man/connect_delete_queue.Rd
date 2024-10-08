% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_operations.R
\name{connect_delete_queue}
\alias{connect_delete_queue}
\title{Deletes a queue}
\usage{
connect_delete_queue(InstanceId, QueueId)
}
\arguments{
\item{InstanceId}{[required] The identifier of the Amazon Connect instance. You can \href{https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html}{find the instance ID}
in the Amazon Resource Name (ARN) of the instance.}

\item{QueueId}{[required] The identifier for the queue.}
}
\description{
Deletes a queue. It isn't possible to delete a queue by using the Amazon Connect admin website.

See \url{https://www.paws-r-sdk.com/docs/connect_delete_queue/} for full documentation.
}
\keyword{internal}
