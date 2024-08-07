% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_associate_client_vpn_target_network}
\alias{ec2_associate_client_vpn_target_network}
\title{Associates a target network with a Client VPN endpoint}
\usage{
ec2_associate_client_vpn_target_network(
  ClientVpnEndpointId,
  SubnetId,
  ClientToken = NULL,
  DryRun = NULL
)
}
\arguments{
\item{ClientVpnEndpointId}{[required] The ID of the Client VPN endpoint.}

\item{SubnetId}{[required] The ID of the subnet to associate with the Client VPN endpoint.}

\item{ClientToken}{Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see \href{https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html}{Ensuring idempotency}.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Associates a target network with a Client VPN endpoint. A target network is a subnet in a VPC. You can associate multiple subnets from the same VPC with a Client VPN endpoint. You can associate only one subnet in each Availability Zone. We recommend that you associate at least two subnets to provide Availability Zone redundancy.

See \url{https://www.paws-r-sdk.com/docs/ec2_associate_client_vpn_target_network/} for full documentation.
}
\keyword{internal}
