% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_modify_availability_zone_group}
\alias{ec2_modify_availability_zone_group}
\title{Changes the opt-in status of the specified zone group for your account}
\usage{
ec2_modify_availability_zone_group(GroupName, OptInStatus, DryRun = NULL)
}
\arguments{
\item{GroupName}{[required] The name of the Availability Zone group, Local Zone group, or Wavelength
Zone group.}

\item{OptInStatus}{[required] Indicates whether to opt in to the zone group. The only valid value is
\verb{opted-in}. You must contact Amazon Web Services Support to opt out of a
Local Zone or Wavelength Zone group.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Changes the opt-in status of the specified zone group for your account.

See \url{https://www.paws-r-sdk.com/docs/ec2_modify_availability_zone_group/} for full documentation.
}
\keyword{internal}
