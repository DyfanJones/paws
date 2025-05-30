% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_create_instances_from_snapshot}
\alias{lightsail_create_instances_from_snapshot}
\title{Creates one or more new instances from a manual or automatic snapshot of
an instance}
\usage{
lightsail_create_instances_from_snapshot(
  instanceNames,
  attachedDiskMapping = NULL,
  availabilityZone,
  instanceSnapshotName = NULL,
  bundleId,
  userData = NULL,
  keyPairName = NULL,
  tags = NULL,
  addOns = NULL,
  ipAddressType = NULL,
  sourceInstanceName = NULL,
  restoreDate = NULL,
  useLatestRestorableAutoSnapshot = NULL
)
}
\arguments{
\item{instanceNames}{[required] The names for your new instances.}

\item{attachedDiskMapping}{An object containing information about one or more disk mappings.}

\item{availabilityZone}{[required] The Availability Zone where you want to create your instances. Use the
following formatting: \verb{us-east-2a} (case sensitive). You can get a list
of Availability Zones by using the \href{https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html}{get regions}
operation. Be sure to add the \verb{include Availability Zones} parameter to
your request.}

\item{instanceSnapshotName}{The name of the instance snapshot on which you are basing your new
instances. Use the get instance snapshots operation to return
information about your existing snapshots.

Constraint:
\itemize{
\item This parameter cannot be defined together with the
\verb{source instance name} parameter. The \verb{instance snapshot name} and
\verb{source instance name} parameters are mutually exclusive.
}}

\item{bundleId}{[required] The bundle of specification information for your virtual private server
(or \emph{instance}), including the pricing plan (\code{micro_x_x}).}

\item{userData}{You can create a launch script that configures a server with additional
user data. For example, \verb{apt-get -y update}.

Depending on the machine image you choose, the command to get software
on your instance varies. Amazon Linux and CentOS use \code{yum}, Debian and
Ubuntu use \code{apt-get}, and FreeBSD uses \code{pkg}. For a complete list, see
the \href{https://docs.aws.amazon.com/lightsail/latest/userguide/compare-options-choose-lightsail-instance-image.html}{Amazon Lightsail Developer Guide}.}

\item{keyPairName}{The name for your key pair.}

\item{tags}{The tag keys and optional values to add to the resource during create.

Use the \code{\link[=lightsail_tag_resource]{tag_resource}} action to tag a
resource after it's created.}

\item{addOns}{An array of objects representing the add-ons to enable for the new
instance.}

\item{ipAddressType}{The IP address type for the instance.

The possible values are \code{ipv4} for IPv4 only, \code{ipv6} for IPv6 only, and
\code{dualstack} for IPv4 and IPv6.

The default value is \code{dualstack}.}

\item{sourceInstanceName}{The name of the source instance from which the source automatic snapshot
was created.

Constraints:
\itemize{
\item This parameter cannot be defined together with the
\verb{instance snapshot name} parameter. The \verb{source instance name} and
\verb{instance snapshot name} parameters are mutually exclusive.
\item Define this parameter only when creating a new instance from an
automatic snapshot. For more information, see the \href{https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots.html}{Amazon Lightsail Developer Guide}.
}}

\item{restoreDate}{The date of the automatic snapshot to use for the new instance. Use the
\verb{get auto snapshots} operation to identify the dates of the available
automatic snapshots.

Constraints:
\itemize{
\item Must be specified in \code{YYYY-MM-DD} format.
\item This parameter cannot be defined together with the
\verb{use latest restorable auto snapshot} parameter. The \verb{restore date}
and \verb{use latest restorable auto snapshot} parameters are mutually
exclusive.
\item Define this parameter only when creating a new instance from an
automatic snapshot. For more information, see the \href{https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots.html}{Amazon Lightsail Developer Guide}.
}}

\item{useLatestRestorableAutoSnapshot}{A Boolean value to indicate whether to use the latest available
automatic snapshot.

Constraints:
\itemize{
\item This parameter cannot be defined together with the \verb{restore date}
parameter. The \verb{use latest restorable auto snapshot} and
\verb{restore date} parameters are mutually exclusive.
\item Define this parameter only when creating a new instance from an
automatic snapshot. For more information, see the \href{https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots.html}{Amazon Lightsail Developer Guide}.
}}
}
\description{
Creates one or more new instances from a manual or automatic snapshot of an instance.

See \url{https://www.paws-r-sdk.com/docs/lightsail_create_instances_from_snapshot/} for full documentation.
}
\keyword{internal}
