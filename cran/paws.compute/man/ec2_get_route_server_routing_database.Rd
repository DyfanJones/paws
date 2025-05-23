% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_get_route_server_routing_database}
\alias{ec2_get_route_server_routing_database}
\title{Gets the routing database for the specified route server}
\usage{
ec2_get_route_server_routing_database(
  RouteServerId,
  NextToken = NULL,
  MaxResults = NULL,
  DryRun = NULL,
  Filters = NULL
)
}
\arguments{
\item{RouteServerId}{[required] The ID of the route server for which to get the routing database.}

\item{NextToken}{The token for the next page of results.}

\item{MaxResults}{The maximum number of routing database entries to return in a single
response.}

\item{DryRun}{A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
\code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}

\item{Filters}{Filters to apply to the routing database query.}
}
\description{
Gets the routing database for the specified route server. The \href{https://en.wikipedia.org/wiki/Routing_table}{Routing Information Base (RIB)} serves as a database that stores all the routing information and network topology data collected by a router or routing system, such as routes learned from BGP peers. The RIB is constantly updated as new routing information is received or existing routes change. This ensures that the route server always has the most current view of the network topology and can make optimal routing decisions.

See \url{https://www.paws-r-sdk.com/docs/ec2_get_route_server_routing_database/} for full documentation.
}
\keyword{internal}
