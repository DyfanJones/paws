% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_create_network_acl_entry}
\alias{ec2_create_network_acl_entry}
\title{Creates an entry (a rule) in a network ACL with the specified rule
number}
\usage{
ec2_create_network_acl_entry(
  DryRun = NULL,
  NetworkAclId,
  RuleNumber,
  Protocol,
  RuleAction,
  Egress,
  CidrBlock = NULL,
  Ipv6CidrBlock = NULL,
  IcmpTypeCode = NULL,
  PortRange = NULL
)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{NetworkAclId}{[required] The ID of the network ACL.}

\item{RuleNumber}{[required] The rule number for the entry (for example, 100). ACL entries are
processed in ascending order by rule number.

Constraints: Positive integer from 1 to 32766. The range 32767 to 65535
is reserved for internal use.}

\item{Protocol}{[required] The protocol number. A value of "-1" means all protocols. If you specify
"-1" or a protocol number other than "6" (TCP), "17" (UDP), or "1"
(ICMP), traffic on all ports is allowed, regardless of any ports or ICMP
types or codes that you specify. If you specify protocol "58" (ICMPv6)
and specify an IPv4 CIDR block, traffic for all ICMP types and codes
allowed, regardless of any that you specify. If you specify protocol
"58" (ICMPv6) and specify an IPv6 CIDR block, you must specify an ICMP
type and code.}

\item{RuleAction}{[required] Indicates whether to allow or deny the traffic that matches the rule.}

\item{Egress}{[required] Indicates whether this is an egress rule (rule is applied to traffic
leaving the subnet).}

\item{CidrBlock}{The IPv4 network range to allow or deny, in CIDR notation (for example
\verb{172.16.0.0/24}). We modify the specified CIDR block to its canonical
form; for example, if you specify \verb{100.68.0.18/18}, we modify it to
\verb{100.68.0.0/18}.}

\item{Ipv6CidrBlock}{The IPv6 network range to allow or deny, in CIDR notation (for example
\verb{2001:db8:1234:1a00::/64}).}

\item{IcmpTypeCode}{ICMP protocol: The ICMP or ICMPv6 type and code. Required if specifying
protocol 1 (ICMP) or protocol 58 (ICMPv6) with an IPv6 CIDR block.}

\item{PortRange}{TCP or UDP protocols: The range of ports the rule applies to. Required
if specifying protocol 6 (TCP) or 17 (UDP).}
}
\description{
Creates an entry (a rule) in a network ACL with the specified rule number. Each network ACL has a set of numbered ingress rules and a separate set of numbered egress rules. When determining whether a packet should be allowed in or out of a subnet associated with the ACL, we process the entries in the ACL according to the rule numbers, in ascending order. Each network ACL has a set of ingress rules and a separate set of egress rules.

See \url{https://www.paws-r-sdk.com/docs/ec2_create_network_acl_entry/} for full documentation.
}
\keyword{internal}
