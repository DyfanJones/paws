% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_get_proxy_session}
\alias{chime_get_proxy_session}
\title{Gets the specified proxy session details for the specified Amazon Chime
Voice Connector}
\usage{
chime_get_proxy_session(VoiceConnectorId, ProxySessionId)
}
\arguments{
\item{VoiceConnectorId}{[required] The Amazon Chime voice connector ID.}

\item{ProxySessionId}{[required] The proxy session ID.}
}
\description{
Gets the specified proxy session details for the specified Amazon Chime
Voice Connector.
}
\section{Request syntax}{
\preformatted{svc$get_proxy_session(
  VoiceConnectorId = "string",
  ProxySessionId = "string"
)
}
}

\keyword{internal}