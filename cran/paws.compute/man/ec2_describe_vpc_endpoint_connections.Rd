% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_describe_vpc_endpoint_connections}
\alias{ec2_describe_vpc_endpoint_connections}
\title{Describes the VPC endpoint connections to your VPC endpoint services,
including any endpoints that are pending your acceptance}
\usage{
ec2_describe_vpc_endpoint_connections(
  DryRun = NULL,
  Filters = NULL,
  MaxResults = NULL,
  NextToken = NULL
)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{Filters}{The filters.
\itemize{
\item \code{ip-address-type} - The IP address type (\code{ipv4} | \code{ipv6}).
\item \code{service-id} - The ID of the service.
\item \code{vpc-endpoint-owner} - The ID of the Amazon Web Services account ID
that owns the endpoint.
\item \code{vpc-endpoint-region} - The Region of the endpoint or \code{cross-region}
to find endpoints for other Regions.
\item \code{vpc-endpoint-state} - The state of the endpoint
(\code{pendingAcceptance} | \code{pending} | \code{available} | \code{deleting} |
\code{deleted} | \code{rejected} | \code{failed}).
\item \code{vpc-endpoint-id} - The ID of the endpoint.
}}

\item{MaxResults}{The maximum number of results to return for the request in a single
page. The remaining results of the initial request can be seen by
sending another request with the returned \code{NextToken} value. This value
can be between 5 and 1,000; if \code{MaxResults} is given a value larger than
1,000, only 1,000 results are returned.}

\item{NextToken}{The token to retrieve the next page of results.}
}
\description{
Describes the VPC endpoint connections to your VPC endpoint services, including any endpoints that are pending your acceptance.

See \url{https://www.paws-r-sdk.com/docs/ec2_describe_vpc_endpoint_connections/} for full documentation.
}
\keyword{internal}
