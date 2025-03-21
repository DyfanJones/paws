% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_operations.R
\name{connect_update_authentication_profile}
\alias{connect_update_authentication_profile}
\title{This API is in preview release for Amazon Connect and is subject to
change}
\usage{
connect_update_authentication_profile(
  AuthenticationProfileId,
  InstanceId,
  Name = NULL,
  Description = NULL,
  AllowedIps = NULL,
  BlockedIps = NULL,
  PeriodicSessionDuration = NULL
)
}
\arguments{
\item{AuthenticationProfileId}{[required] A unique identifier for the authentication profile.}

\item{InstanceId}{[required] The identifier of the Amazon Connect instance. You can \href{https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html}{find the instance ID}
in the Amazon Resource Name (ARN) of the instance.}

\item{Name}{The name for the authentication profile.}

\item{Description}{The description for the authentication profile.}

\item{AllowedIps}{A list of IP address range strings that are allowed to access the
instance. For more information on how to configure IP addresses,
see\href{https://docs.aws.amazon.com/connect/latest/adminguide/authentication-profiles.html#configure-session-timeouts}{Configure session timeouts}
in the \emph{Amazon Connect Administrator Guide}.}

\item{BlockedIps}{A list of IP address range strings that are blocked from accessing the
instance. For more information on how to configure IP addresses, For
more information on how to configure IP addresses, see \href{https://docs.aws.amazon.com/connect/latest/adminguide/authentication-profiles.html#configure-ip-based-ac}{Configure IP-based access control}
in the \emph{Amazon Connect Administrator Guide}.}

\item{PeriodicSessionDuration}{The short lived session duration configuration for users logged in to
Amazon Connect, in minutes. This value determines the maximum possible
time before an agent is authenticated. For more information, For more
information on how to configure IP addresses, see \href{https://docs.aws.amazon.com/connect/latest/adminguide/authentication-profiles.html#configure-session-timeouts}{Configure session timeouts}
in the \emph{Amazon Connect Administrator Guide}.}
}
\description{
This API is in preview release for Amazon Connect and is subject to change. To request access to this API, contact Amazon Web ServicesSupport.

See \url{https://www.paws-r-sdk.com/docs/connect_update_authentication_profile/} for full documentation.
}
\keyword{internal}
