% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_create_instance_connect_endpoint}
\alias{ec2_create_instance_connect_endpoint}
\title{Creates an EC2 Instance Connect Endpoint}
\usage{
ec2_create_instance_connect_endpoint(
  DryRun = NULL,
  SubnetId,
  SecurityGroupIds = NULL,
  PreserveClientIp = NULL,
  ClientToken = NULL,
  TagSpecifications = NULL
)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{SubnetId}{[required] The ID of the subnet in which to create the EC2 Instance Connect
Endpoint.}

\item{SecurityGroupIds}{One or more security groups to associate with the endpoint. If you don't
specify a security group, the default security group for your VPC will
be associated with the endpoint.}

\item{PreserveClientIp}{Indicates whether the client IP address is preserved as the source. The
following are the possible values.
\itemize{
\item \code{true} - Use the client IP address as the source.
\item \code{false} - Use the network interface IP address as the source.
}

Default: \code{false}}

\item{ClientToken}{Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.}

\item{TagSpecifications}{The tags to apply to the EC2 Instance Connect Endpoint during creation.}
}
\description{
Creates an EC2 Instance Connect Endpoint.

See \url{https://www.paws-r-sdk.com/docs/ec2_create_instance_connect_endpoint/} for full documentation.
}
\keyword{internal}
