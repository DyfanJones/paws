% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/networkmanager_operations.R
\name{networkmanager_create_direct_connect_gateway_attachment}
\alias{networkmanager_create_direct_connect_gateway_attachment}
\title{Creates an Amazon Web Services Direct Connect gateway attachment}
\usage{
networkmanager_create_direct_connect_gateway_attachment(
  CoreNetworkId,
  DirectConnectGatewayArn,
  EdgeLocations,
  Tags = NULL,
  ClientToken = NULL
)
}
\arguments{
\item{CoreNetworkId}{[required] The ID of the Cloud WAN core network that the Direct Connect gateway
attachment should be attached to.}

\item{DirectConnectGatewayArn}{[required] The ARN of the Direct Connect gateway attachment.}

\item{EdgeLocations}{[required] One or more core network edge locations that the Direct Connect gateway
attachment is associated with.}

\item{Tags}{The key value tags to apply to the Direct Connect gateway attachment
during creation.}

\item{ClientToken}{client token}
}
\description{
Creates an Amazon Web Services Direct Connect gateway attachment

See \url{https://www.paws-r-sdk.com/docs/networkmanager_create_direct_connect_gateway_attachment/} for full documentation.
}
\keyword{internal}
