% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_release_address}
\alias{ec2_release_address}
\title{Releases the specified Elastic IP address}
\usage{
ec2_release_address(AllocationId, PublicIp, NetworkBorderGroup, DryRun)
}
\arguments{
\item{AllocationId}{[EC2-VPC] The allocation ID. Required for EC2-VPC.}

\item{PublicIp}{[EC2-Classic] The Elastic IP address. Required for EC2-Classic.}

\item{NetworkBorderGroup}{The location that the IP address is released from.

If you provide an incorrect network border group, you will receive an
\code{InvalidAddress.NotFound} error. For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/APIReference/errors-overview.html}{Error Codes}.

You cannot use a network border group with EC2 Classic. If you attempt
this operation on EC2 classic, you will receive an
\code{InvalidParameterCombination} error. For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/APIReference/errors-overview.html}{Error Codes}.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Releases the specified Elastic IP address.
}
\details{
[EC2-Classic, default VPC] Releasing an Elastic IP address
automatically disassociates it from any instance that it\'s associated
with. To disassociate an Elastic IP address without releasing it, use
DisassociateAddress.

[Nondefault VPC] You must use DisassociateAddress to disassociate the
Elastic IP address before you can release it. Otherwise, Amazon EC2
returns an error (\code{InvalidIPAddress.InUse}).

After releasing an Elastic IP address, it is released to the IP address
pool. Be sure to update your DNS records and any servers or devices that
communicate with the address. If you attempt to release an Elastic IP
address that you already released, you\'ll get an \code{AuthFailure} error if
the address is already allocated to another AWS account.

[EC2-VPC] After you release an Elastic IP address for use in a VPC,
you might be able to recover it. For more information, see
AllocateAddress.
}
\section{Request syntax}{
\preformatted{svc$release_address(
  AllocationId = "string",
  PublicIp = "string",
  NetworkBorderGroup = "string",
  DryRun = TRUE|FALSE
)
}
}

\examples{
\dontrun{
# This example releases an Elastic IP address for use with instances in a
# VPC.
svc$release_address(
  AllocationId = "eipalloc-64d5890a"
)

# This example releases an Elastic IP address for use with instances in
# EC2-Classic.
svc$release_address(
  PublicIp = "198.51.100.0"
)
}

}
\keyword{internal}
