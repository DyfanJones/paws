% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_get_route_server_propagations}
\alias{ec2_get_route_server_propagations}
\title{Gets information about the route propagations for the specified route
server}
\usage{
ec2_get_route_server_propagations(
  RouteServerId,
  RouteTableId = NULL,
  DryRun = NULL
)
}
\arguments{
\item{RouteServerId}{[required] The ID of the route server for which to get propagation information.}

\item{RouteTableId}{The ID of the route table for which to get propagation information.}

\item{DryRun}{A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
\code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Gets information about the route propagations for the specified route server.

See \url{https://www.paws-r-sdk.com/docs/ec2_get_route_server_propagations/} for full documentation.
}
\keyword{internal}
