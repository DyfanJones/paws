% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_describe_reserved_instances_offerings}
\alias{ec2_describe_reserved_instances_offerings}
\title{Describes Reserved Instance offerings that are available for purchase}
\usage{
ec2_describe_reserved_instances_offerings(
  AvailabilityZone = NULL,
  IncludeMarketplace = NULL,
  InstanceType = NULL,
  MaxDuration = NULL,
  MaxInstanceCount = NULL,
  MinDuration = NULL,
  OfferingClass = NULL,
  ProductDescription = NULL,
  ReservedInstancesOfferingIds = NULL,
  AvailabilityZoneId = NULL,
  DryRun = NULL,
  Filters = NULL,
  InstanceTenancy = NULL,
  OfferingType = NULL,
  NextToken = NULL,
  MaxResults = NULL
)
}
\arguments{
\item{AvailabilityZone}{The Availability Zone in which the Reserved Instance can be used.

Either \code{AvailabilityZone} or \code{AvailabilityZoneId} can be specified, but
not both.}

\item{IncludeMarketplace}{Include Reserved Instance Marketplace offerings in the response.}

\item{InstanceType}{The instance type that the reservation will cover (for example,
\code{m1.small}). For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html}{Amazon EC2 instance types}
in the \emph{Amazon EC2 User Guide}.}

\item{MaxDuration}{The maximum duration (in seconds) to filter when searching for
offerings.

Default: 94608000 (3 years)}

\item{MaxInstanceCount}{The maximum number of instances to filter when searching for offerings.

Default: 20}

\item{MinDuration}{The minimum duration (in seconds) to filter when searching for
offerings.

Default: 2592000 (1 month)}

\item{OfferingClass}{The offering class of the Reserved Instance. Can be \code{standard} or
\code{convertible}.}

\item{ProductDescription}{The Reserved Instance product platform description. Instances that
include \verb{(Amazon VPC)} in the description are for use with Amazon VPC.}

\item{ReservedInstancesOfferingIds}{One or more Reserved Instances offering IDs.}

\item{AvailabilityZoneId}{The ID of the Availability Zone.

Either \code{AvailabilityZone} or \code{AvailabilityZoneId} can be specified, but
not both.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{Filters}{One or more filters.
\itemize{
\item \code{availability-zone} - The Availability Zone where the Reserved
Instance can be used.
\item \code{availability-zone-id} - The ID of the Availability Zone where the
Reserved Instance can be used.
\item \code{duration} - The duration of the Reserved Instance (for example, one
year or three years), in seconds (\code{31536000} | \code{94608000}).
\item \code{fixed-price} - The purchase price of the Reserved Instance (for
example, 9800.0).
\item \code{instance-type} - The instance type that is covered by the
reservation.
\item \code{marketplace} - Set to \code{true} to show only Reserved Instance
Marketplace offerings. When this filter is not used, which is the
default behavior, all offerings from both Amazon Web Services and
the Reserved Instance Marketplace are listed.
\item \code{product-description} - The Reserved Instance product platform
description (\code{Linux/UNIX} | \verb{Linux with SQL Server Standard} |
\verb{Linux with SQL Server Web} | \verb{Linux with SQL Server Enterprise} |
\verb{SUSE Linux} | \verb{Red Hat Enterprise Linux} |
\verb{Red Hat Enterprise Linux with HA} | \code{Windows} |
\verb{Windows with SQL Server Standard} | \verb{Windows with SQL Server Web} |
\verb{Windows with SQL Server Enterprise}).
\item \code{reserved-instances-offering-id} - The Reserved Instances offering
ID.
\item \code{scope} - The scope of the Reserved Instance (\verb{Availability Zone} or
\code{Region}).
\item \code{usage-price} - The usage price of the Reserved Instance, per hour
(for example, 0.84).
}}

\item{InstanceTenancy}{The tenancy of the instances covered by the reservation. A Reserved
Instance with a tenancy of \code{dedicated} is applied to instances that run
in a VPC on single-tenant hardware (i.e., Dedicated Instances).

\strong{Important:} The \code{host} value cannot be used with this parameter. Use
the \code{default} or \code{dedicated} values only.

Default: \code{default}}

\item{OfferingType}{The Reserved Instance offering type. If you are using tools that predate
the 2011-11-01 API version, you only have access to the
\verb{Medium Utilization} Reserved Instance offering type.}

\item{NextToken}{The token to retrieve the next page of results.}

\item{MaxResults}{The maximum number of results to return for the request in a single
page. The remaining results of the initial request can be seen by
sending another request with the returned \code{NextToken} value. The maximum
is 100.

Default: 100}
}
\description{
Describes Reserved Instance offerings that are available for purchase. With Reserved Instances, you purchase the right to launch instances for a period of time. During that time period, you do not receive insufficient capacity errors, and you pay a lower usage rate than the rate charged for On-Demand instances for the actual time used.

See \url{https://www.paws-r-sdk.com/docs/ec2_describe_reserved_instances_offerings/} for full documentation.
}
\keyword{internal}
