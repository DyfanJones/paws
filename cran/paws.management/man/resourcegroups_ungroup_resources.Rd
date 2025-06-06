% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resourcegroups_operations.R
\name{resourcegroups_ungroup_resources}
\alias{resourcegroups_ungroup_resources}
\title{Removes the specified resources from the specified group}
\usage{
resourcegroups_ungroup_resources(Group, ResourceArns)
}
\arguments{
\item{Group}{[required] The name or the Amazon resource name (ARN) of the resource group from
which to remove the resources.}

\item{ResourceArns}{[required] The Amazon resource names (ARNs) of the resources to be removed from the
group.}
}
\description{
Removes the specified resources from the specified group. This operation works only with static groups that you populated using the \code{\link[=resourcegroups_group_resources]{group_resources}} operation. It doesn't work with any resource groups that are automatically populated by tag-based or CloudFormation stack-based queries.

See \url{https://www.paws-r-sdk.com/docs/resourcegroups_ungroup_resources/} for full documentation.
}
\keyword{internal}
