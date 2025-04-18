% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vpclattice_operations.R
\name{vpclattice_list_service_network_vpc_endpoint_associations}
\alias{vpclattice_list_service_network_vpc_endpoint_associations}
\title{Lists the associations between a service network and a VPC endpoint}
\usage{
vpclattice_list_service_network_vpc_endpoint_associations(
  maxResults = NULL,
  nextToken = NULL,
  serviceNetworkIdentifier
)
}
\arguments{
\item{maxResults}{The maximum page size.}

\item{nextToken}{If there are additional results, a pagination token for the next page of
results.}

\item{serviceNetworkIdentifier}{[required] The ID of the service network associated with the VPC endpoint.}
}
\description{
Lists the associations between a service network and a VPC endpoint.

See \url{https://www.paws-r-sdk.com/docs/vpclattice_list_service_network_vpc_endpoint_associations/} for full documentation.
}
\keyword{internal}
