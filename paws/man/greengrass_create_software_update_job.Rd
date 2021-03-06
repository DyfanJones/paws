% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/greengrass_operations.R
\name{greengrass_create_software_update_job}
\alias{greengrass_create_software_update_job}
\title{Creates a software update for a core or group of cores (specified as an
IoT thing group}
\usage{
greengrass_create_software_update_job(AmznClientToken, S3UrlSignerRole,
  SoftwareToUpdate, UpdateAgentLogLevel, UpdateTargets,
  UpdateTargetsArchitecture, UpdateTargetsOperatingSystem)
}
\arguments{
\item{AmznClientToken}{A client token used to correlate requests and responses.}

\item{S3UrlSignerRole}{[required]}

\item{SoftwareToUpdate}{[required]}

\item{UpdateAgentLogLevel}{}

\item{UpdateTargets}{[required]}

\item{UpdateTargetsArchitecture}{[required]}

\item{UpdateTargetsOperatingSystem}{[required]}
}
\description{
Creates a software update for a core or group of cores (specified as an IoT thing group.) Use this to update the OTA Agent as well as the Greengrass core software. It makes use of the IoT Jobs feature which provides additional commands to manage a Greengrass core software update job.
}
\section{Request syntax}{
\preformatted{svc$create_software_update_job(
  AmznClientToken = "string",
  S3UrlSignerRole = "string",
  SoftwareToUpdate = "core"|"ota_agent",
  UpdateAgentLogLevel = "NONE"|"TRACE"|"DEBUG"|"VERBOSE"|"INFO"|"WARN"|"ERROR"|"FATAL",
  UpdateTargets = list(
    "string"
  ),
  UpdateTargetsArchitecture = "armv6l"|"armv7l"|"x86_64"|"aarch64",
  UpdateTargetsOperatingSystem = "ubuntu"|"raspbian"|"amazon_linux"|"openwrt"
)
}
}

\keyword{internal}
