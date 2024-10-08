% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ivs_operations.R
\name{ivs_list_stream_keys}
\alias{ivs_list_stream_keys}
\title{Gets summary information about stream keys for the specified channel}
\usage{
ivs_list_stream_keys(channelArn, nextToken = NULL, maxResults = NULL)
}
\arguments{
\item{channelArn}{[required] Channel ARN used to filter the list.}

\item{nextToken}{The first stream key to retrieve. This is used for pagination; see the
\code{nextToken} response field.}

\item{maxResults}{Maximum number of streamKeys to return. Default: 1.}
}
\description{
Gets summary information about stream keys for the specified channel.

See \url{https://www.paws-r-sdk.com/docs/ivs_list_stream_keys/} for full documentation.
}
\keyword{internal}
