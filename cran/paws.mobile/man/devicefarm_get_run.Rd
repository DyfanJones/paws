% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/devicefarm_operations.R
\name{devicefarm_get_run}
\alias{devicefarm_get_run}
\title{Gets information about a run}
\usage{
devicefarm_get_run(arn)
}
\arguments{
\item{arn}{[required] The run's ARN.}
}
\description{
Gets information about a run.
}
\section{Request syntax}{
\preformatted{svc$get_run(
  arn = "string"
)
}
}

\examples{
# The following example gets information about a specific test run.
\donttest{svc$get_run(
  arn = "arn:aws:devicefarm:us-west-2:123456789101:run:5e01a8c7-c861-4c0a-b1d5-5ec6e6c6dd23/..."
)}

}
\keyword{internal}