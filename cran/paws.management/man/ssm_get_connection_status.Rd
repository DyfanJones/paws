% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssm_operations.R
\name{ssm_get_connection_status}
\alias{ssm_get_connection_status}
\title{Retrieves the Session Manager connection status for an instance to
determine whether it is running and ready to receive Session Manager
connections}
\usage{
ssm_get_connection_status(Target)
}
\arguments{
\item{Target}{[required] The ID of the instance.}
}
\description{
Retrieves the Session Manager connection status for an instance to
determine whether it is running and ready to receive Session Manager
connections.
}
\section{Request syntax}{
\preformatted{svc$get_connection_status(
  Target = "string"
)
}
}

\keyword{internal}
