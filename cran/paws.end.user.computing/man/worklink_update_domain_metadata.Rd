% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/worklink_operations.R
\name{worklink_update_domain_metadata}
\alias{worklink_update_domain_metadata}
\title{Updates domain metadata, such as DisplayName}
\usage{
worklink_update_domain_metadata(FleetArn, DomainName, DisplayName)
}
\arguments{
\item{FleetArn}{[required] The ARN of the fleet.}

\item{DomainName}{[required] The name of the domain.}

\item{DisplayName}{The name to display.}
}
\description{
Updates domain metadata, such as DisplayName.
}
\section{Request syntax}{
\preformatted{svc$update_domain_metadata(
  FleetArn = "string",
  DomainName = "string",
  DisplayName = "string"
)
}
}

\keyword{internal}