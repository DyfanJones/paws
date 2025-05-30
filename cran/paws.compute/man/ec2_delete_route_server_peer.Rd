% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_delete_route_server_peer}
\alias{ec2_delete_route_server_peer}
\title{Deletes the specified BGP peer from a route server}
\usage{
ec2_delete_route_server_peer(RouteServerPeerId, DryRun = NULL)
}
\arguments{
\item{RouteServerPeerId}{[required] The ID of the route server peer to delete.}

\item{DryRun}{A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
\code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Deletes the specified BGP peer from a route server.

See \url{https://www.paws-r-sdk.com/docs/ec2_delete_route_server_peer/} for full documentation.
}
\keyword{internal}
