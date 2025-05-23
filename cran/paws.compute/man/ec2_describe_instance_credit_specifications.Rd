% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_describe_instance_credit_specifications}
\alias{ec2_describe_instance_credit_specifications}
\title{Describes the credit option for CPU usage of the specified burstable
performance instances}
\usage{
ec2_describe_instance_credit_specifications(
  DryRun = NULL,
  Filters = NULL,
  InstanceIds = NULL,
  MaxResults = NULL,
  NextToken = NULL
)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the operation,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
\code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}

\item{Filters}{The filters.
\itemize{
\item \code{instance-id} - The ID of the instance.
}}

\item{InstanceIds}{The instance IDs.

Default: Describes all your instances.

Constraints: Maximum 1000 explicitly specified instance IDs.}

\item{MaxResults}{The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see
\href{https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination}{Pagination}.

You cannot specify this parameter and the instance IDs parameter in the
same call.}

\item{NextToken}{The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.}
}
\description{
Describes the credit option for CPU usage of the specified burstable performance instances. The credit options are \code{standard} and \code{unlimited}.

See \url{https://www.paws-r-sdk.com/docs/ec2_describe_instance_credit_specifications/} for full documentation.
}
\keyword{internal}
