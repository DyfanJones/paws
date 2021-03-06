% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/medialive_operations.R
\name{medialive_delete_channel}
\alias{medialive_delete_channel}
\title{Starts deletion of channel}
\usage{
medialive_delete_channel(ChannelId)
}
\arguments{
\item{ChannelId}{[required] Unique ID of the channel.}
}
\description{
Starts deletion of channel. The associated outputs are also deleted.
}
\section{Request syntax}{
\preformatted{svc$delete_channel(
  ChannelId = "string"
)
}
}

\keyword{internal}
