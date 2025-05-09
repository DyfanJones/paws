% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_describe_dhcp_options}
\alias{ec2_describe_dhcp_options}
\title{Describes your DHCP option sets}
\usage{
ec2_describe_dhcp_options(
  DhcpOptionsIds = NULL,
  NextToken = NULL,
  MaxResults = NULL,
  DryRun = NULL,
  Filters = NULL
)
}
\arguments{
\item{DhcpOptionsIds}{The IDs of DHCP option sets.}

\item{NextToken}{The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.}

\item{MaxResults}{The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see
\href{https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination}{Pagination}.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{Filters}{The filters.
\itemize{
\item \code{dhcp-options-id} - The ID of a DHCP options set.
\item \code{key} - The key for one of the options (for example, \code{domain-name}).
\item \code{value} - The value for one of the options.
\item \code{owner-id} - The ID of the Amazon Web Services account that owns the
DHCP options set.
\item \code{tag} - The key/value combination of a tag assigned to the resource.
Use the tag key in the filter name and the tag value as the filter
value. For example, to find all resources that have a tag with the
key \code{Owner} and the value \code{TeamA}, specify \code{tag:Owner} for the
filter name and \code{TeamA} for the filter value.
\item \code{tag-key} - The key of a tag assigned to the resource. Use this
filter to find all resources assigned a tag with a specific key,
regardless of the tag value.
}}
}
\description{
Describes your DHCP option sets. The default is to describe all your DHCP option sets. Alternatively, you can specify specific DHCP option set IDs or filter the results to include only the DHCP option sets that match specific criteria.

See \url{https://www.paws-r-sdk.com/docs/ec2_describe_dhcp_options/} for full documentation.
}
\keyword{internal}
