% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_disassociate_nat_gateway_address}
\alias{ec2_disassociate_nat_gateway_address}
\title{Disassociates secondary Elastic IP addresses (EIPs) from a public NAT
gateway}
\usage{
ec2_disassociate_nat_gateway_address(
  NatGatewayId,
  AssociationIds,
  MaxDrainDurationSeconds = NULL,
  DryRun = NULL
)
}
\arguments{
\item{NatGatewayId}{[required] The ID of the NAT gateway.}

\item{AssociationIds}{[required] The association IDs of EIPs that have been associated with the NAT
gateway.}

\item{MaxDrainDurationSeconds}{The maximum amount of time to wait (in seconds) before forcibly
releasing the IP addresses if connections are still in progress. Default
value is 350 seconds.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Disassociates secondary Elastic IP addresses (EIPs) from a public NAT gateway. You cannot disassociate your primary EIP. For more information, see \href{https://docs.aws.amazon.com/vpc/latest/userguide/nat-gateway-working-with.html#nat-gateway-edit-secondary}{Edit secondary IP address associations} in the \emph{Amazon VPC User Guide}.

See \url{https://www.paws-r-sdk.com/docs/ec2_disassociate_nat_gateway_address/} for full documentation.
}
\keyword{internal}
