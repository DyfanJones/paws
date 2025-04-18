% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_modify_vpc_block_public_access_exclusion}
\alias{ec2_modify_vpc_block_public_access_exclusion}
\title{Modify VPC Block Public Access (BPA) exclusions}
\usage{
ec2_modify_vpc_block_public_access_exclusion(
  DryRun = NULL,
  ExclusionId,
  InternetGatewayExclusionMode
)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{ExclusionId}{[required] The ID of an exclusion.}

\item{InternetGatewayExclusionMode}{[required] The exclusion mode for internet gateway traffic.
\itemize{
\item \code{allow-bidirectional}: Allow all internet traffic to and from the
excluded VPCs and subnets.
\item \code{allow-egress}: Allow outbound internet traffic from the excluded
VPCs and subnets. Block inbound internet traffic to the excluded
VPCs and subnets. Only applies when VPC Block Public Access is set
to Bidirectional.
}}
}
\description{
Modify VPC Block Public Access (BPA) exclusions. A VPC BPA exclusion is a mode that can be applied to a single VPC or subnet that exempts it from the account’s BPA mode and will allow bidirectional or egress-only access. You can create BPA exclusions for VPCs and subnets even when BPA is not enabled on the account to ensure that there is no traffic disruption to the exclusions when VPC BPA is turned on.

See \url{https://www.paws-r-sdk.com/docs/ec2_modify_vpc_block_public_access_exclusion/} for full documentation.
}
\keyword{internal}
