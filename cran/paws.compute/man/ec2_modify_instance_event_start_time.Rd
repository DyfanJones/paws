% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_modify_instance_event_start_time}
\alias{ec2_modify_instance_event_start_time}
\title{Modifies the start time for a scheduled Amazon EC2 instance event}
\usage{
ec2_modify_instance_event_start_time(
  DryRun = NULL,
  InstanceId,
  InstanceEventId,
  NotBefore
)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the operation,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
\code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}

\item{InstanceId}{[required] The ID of the instance with the scheduled event.}

\item{InstanceEventId}{[required] The ID of the event whose date and time you are modifying.}

\item{NotBefore}{[required] The new date and time when the event will take place.}
}
\description{
Modifies the start time for a scheduled Amazon EC2 instance event.

See \url{https://www.paws-r-sdk.com/docs/ec2_modify_instance_event_start_time/} for full documentation.
}
\keyword{internal}
