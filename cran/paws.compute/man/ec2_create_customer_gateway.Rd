% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_create_customer_gateway}
\alias{ec2_create_customer_gateway}
\title{Provides information to Amazon Web Services about your customer gateway
device}
\usage{
ec2_create_customer_gateway(
  BgpAsn = NULL,
  PublicIp = NULL,
  CertificateArn = NULL,
  Type,
  TagSpecifications = NULL,
  DeviceName = NULL,
  IpAddress = NULL,
  BgpAsnExtended = NULL,
  DryRun = NULL
)
}
\arguments{
\item{BgpAsn}{For customer gateway devices that support BGP, specify the device's ASN.
You must specify either \code{BgpAsn} or \code{BgpAsnExtended} when creating the
customer gateway. If the ASN is larger than \verb{2,147,483,647}, you must
use \code{BgpAsnExtended}.

Default: 65000

Valid values: \code{1} to \verb{2,147,483,647}}

\item{PublicIp}{\emph{This member has been deprecated.} The Internet-routable IP address for
the customer gateway's outside interface. The address must be static.}

\item{CertificateArn}{The Amazon Resource Name (ARN) for the customer gateway certificate.}

\item{Type}{[required] The type of VPN connection that this customer gateway supports
(\code{ipsec.1}).}

\item{TagSpecifications}{The tags to apply to the customer gateway.}

\item{DeviceName}{A name for the customer gateway device.

Length Constraints: Up to 255 characters.}

\item{IpAddress}{IPv4 address for the customer gateway device's outside interface. The
address must be static. If \code{OutsideIpAddressType} in your VPN connection
options is set to \code{PrivateIpv4}, you can use an RFC6598 or RFC1918
private IPv4 address. If \code{OutsideIpAddressType} is set to \code{PublicIpv4},
you can use a public IPv4 address.}

\item{BgpAsnExtended}{For customer gateway devices that support BGP, specify the device's ASN.
You must specify either \code{BgpAsn} or \code{BgpAsnExtended} when creating the
customer gateway. If the ASN is larger than \verb{2,147,483,647}, you must
use \code{BgpAsnExtended}.

Valid values: \verb{2,147,483,648} to \verb{4,294,967,295}}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Provides information to Amazon Web Services about your customer gateway device. The customer gateway device is the appliance at your end of the VPN connection. You must provide the IP address of the customer gateway device’s external interface. The IP address must be static and can be behind a device performing network address translation (NAT).

See \url{https://www.paws-r-sdk.com/docs/ec2_create_customer_gateway/} for full documentation.
}
\keyword{internal}
