% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_describe_network_interface_attribute}
\alias{ec2_describe_network_interface_attribute}
\title{Describes a network interface attribute}
\usage{
ec2_describe_network_interface_attribute(
  DryRun = NULL,
  NetworkInterfaceId,
  Attribute = NULL
)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{NetworkInterfaceId}{[required] The ID of the network interface.}

\item{Attribute}{The attribute of the network interface. This parameter is required.}
}
\description{
Describes a network interface attribute. You can specify only one attribute at a time.

See \url{https://www.paws-r-sdk.com/docs/ec2_describe_network_interface_attribute/} for full documentation.
}
\keyword{internal}
