% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_create_traffic_mirror_filter_rule}
\alias{ec2_create_traffic_mirror_filter_rule}
\title{Creates a Traffic Mirror filter rule}
\usage{
ec2_create_traffic_mirror_filter_rule(
  TrafficMirrorFilterId,
  TrafficDirection,
  RuleNumber,
  RuleAction,
  DestinationPortRange = NULL,
  SourcePortRange = NULL,
  Protocol = NULL,
  DestinationCidrBlock,
  SourceCidrBlock,
  Description = NULL,
  DryRun = NULL,
  ClientToken = NULL,
  TagSpecifications = NULL
)
}
\arguments{
\item{TrafficMirrorFilterId}{[required] The ID of the filter that this rule is associated with.}

\item{TrafficDirection}{[required] The type of traffic.}

\item{RuleNumber}{[required] The number of the Traffic Mirror rule. This number must be unique for
each Traffic Mirror rule in a given direction. The rules are processed
in ascending order by rule number.}

\item{RuleAction}{[required] The action to take on the filtered traffic.}

\item{DestinationPortRange}{The destination port range.}

\item{SourcePortRange}{The source port range.}

\item{Protocol}{The protocol, for example UDP, to assign to the Traffic Mirror rule.

For information about the protocol value, see \href{https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml}{Protocol Numbers}
on the Internet Assigned Numbers Authority (IANA) website.}

\item{DestinationCidrBlock}{[required] The destination CIDR block to assign to the Traffic Mirror rule.}

\item{SourceCidrBlock}{[required] The source CIDR block to assign to the Traffic Mirror rule.}

\item{Description}{The description of the Traffic Mirror rule.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{ClientToken}{Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see \href{https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html}{How to ensure idempotency}.}

\item{TagSpecifications}{Traffic Mirroring tags specifications.}
}
\description{
Creates a Traffic Mirror filter rule.

See \url{https://www.paws-r-sdk.com/docs/ec2_create_traffic_mirror_filter_rule/} for full documentation.
}
\keyword{internal}
