% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cleanroomsml_operations.R
\name{cleanroomsml_list_collaboration_ml_input_channels}
\alias{cleanroomsml_list_collaboration_ml_input_channels}
\title{Returns a list of the ML input channels in a collaboration}
\usage{
cleanroomsml_list_collaboration_ml_input_channels(
  nextToken = NULL,
  maxResults = NULL,
  collaborationIdentifier
)
}
\arguments{
\item{nextToken}{The token value retrieved from a previous call to access the next page
of results.}

\item{maxResults}{The maximum number of results to return.}

\item{collaborationIdentifier}{[required] The collaboration ID of the collaboration that contains the ML input
channels that you want to list.}
}
\description{
Returns a list of the ML input channels in a collaboration.

See \url{https://www.paws-r-sdk.com/docs/cleanroomsml_list_collaboration_ml_input_channels/} for full documentation.
}
\keyword{internal}
