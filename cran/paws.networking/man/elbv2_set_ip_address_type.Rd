% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elbv2_operations.R
\name{elbv2_set_ip_address_type}
\alias{elbv2_set_ip_address_type}
\title{Sets the type of IP addresses used by the subnets of the specified load
balancer}
\usage{
elbv2_set_ip_address_type(LoadBalancerArn, IpAddressType)
}
\arguments{
\item{LoadBalancerArn}{[required] The Amazon Resource Name (ARN) of the load balancer.}

\item{IpAddressType}{[required] Note: Internal load balancers must use the \code{ipv4} IP address type.

[Application Load Balancers] The IP address type. The possible values
are \code{ipv4} (for only IPv4 addresses), \code{dualstack} (for IPv4 and IPv6
addresses), and \code{dualstack-without-public-ipv4} (for IPv6 only public
addresses, with private IPv4 and IPv6 addresses).

Note: Application Load Balancer authentication only supports IPv4
addresses when connecting to an Identity Provider (IdP) or Amazon
Cognito endpoint. Without a public IPv4 address the load balancer cannot
complete the authentication process, resulting in HTTP 500 errors.

[Network Load Balancers] The IP address type. The possible values are
\code{ipv4} (for only IPv4 addresses) and \code{dualstack} (for IPv4 and IPv6
addresses). You can’t specify \code{dualstack} for a load balancer with a UDP
or TCP_UDP listener.

[Gateway Load Balancers] The IP address type. The possible values are
\code{ipv4} (for only IPv4 addresses) and \code{dualstack} (for IPv4 and IPv6
addresses).}
}
\description{
Sets the type of IP addresses used by the subnets of the specified load balancer.

See \url{https://www.paws-r-sdk.com/docs/elbv2_set_ip_address_type/} for full documentation.
}
\keyword{internal}
