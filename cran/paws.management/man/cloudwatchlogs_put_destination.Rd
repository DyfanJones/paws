% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudwatchlogs_operations.R
\name{cloudwatchlogs_put_destination}
\alias{cloudwatchlogs_put_destination}
\title{Creates or updates a destination}
\usage{
cloudwatchlogs_put_destination(destinationName, targetArn, roleArn)
}
\arguments{
\item{destinationName}{[required] A name for the destination.}

\item{targetArn}{[required] The ARN of an Amazon Kinesis stream to which to deliver matching log
events.}

\item{roleArn}{[required] The ARN of an IAM role that grants CloudWatch Logs permissions to call
the Amazon Kinesis PutRecord operation on the destination stream.}
}
\description{
Creates or updates a destination. A destination encapsulates a physical
resource (such as an Amazon Kinesis stream) and enables you to subscribe
to a real-time stream of log events for a different account, ingested
using PutLogEvents. Currently, the only supported physical resource is a
Kinesis stream belonging to the same account as the destination.
}
\details{
Through an access policy, a destination controls what is written to its
Kinesis stream. By default, \code{PutDestination} does not set any access
policy with the destination, which means a cross-account user cannot
call PutSubscriptionFilter against this destination. To enable this, the
destination owner must call PutDestinationPolicy after \code{PutDestination}.
}
\section{Request syntax}{
\preformatted{svc$put_destination(
  destinationName = "string",
  targetArn = "string",
  roleArn = "string"
)
}
}

\keyword{internal}