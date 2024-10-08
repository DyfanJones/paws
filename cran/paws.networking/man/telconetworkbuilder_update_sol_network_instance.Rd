% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/telconetworkbuilder_operations.R
\name{telconetworkbuilder_update_sol_network_instance}
\alias{telconetworkbuilder_update_sol_network_instance}
\title{Update a network instance}
\usage{
telconetworkbuilder_update_sol_network_instance(
  modifyVnfInfoData = NULL,
  nsInstanceId,
  tags = NULL,
  updateNs = NULL,
  updateType
)
}
\arguments{
\item{modifyVnfInfoData}{Identifies the network function information parameters and/or the
configurable properties of the network function to be modified.

Include this property only if the update type is
\code{MODIFY_VNF_INFORMATION}.}

\item{nsInstanceId}{[required] ID of the network instance.}

\item{tags}{A tag is a label that you assign to an Amazon Web Services resource.
Each tag consists of a key and an optional value. When you use this API,
the tags are only applied to the network operation that is created.
These tags are not applied to the network instance. Use tags to search
and filter your resources or track your Amazon Web Services costs.}

\item{updateNs}{Identifies the network service descriptor and the configurable
properties of the descriptor, to be used for the update.

Include this property only if the update type is \code{UPDATE_NS}.}

\item{updateType}{[required] The type of update.
\itemize{
\item Use the \code{MODIFY_VNF_INFORMATION} update type, to update a specific
network function configuration, in the network instance.
\item Use the \code{UPDATE_NS} update type, to update the network instance to a
new network service descriptor.
}}
}
\description{
Update a network instance.

See \url{https://www.paws-r-sdk.com/docs/telconetworkbuilder_update_sol_network_instance/} for full documentation.
}
\keyword{internal}
