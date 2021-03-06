% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opsworks_operations.R
\name{opsworks_describe_service_errors}
\alias{opsworks_describe_service_errors}
\title{Describes AWS OpsWorks Stacks service errors}
\usage{
opsworks_describe_service_errors(StackId, InstanceId, ServiceErrorIds)
}
\arguments{
\item{StackId}{The stack ID. If you use this parameter, \code{DescribeServiceErrors} returns
descriptions of the errors associated with the specified stack.}

\item{InstanceId}{The instance ID. If you use this parameter, \code{DescribeServiceErrors}
returns descriptions of the errors associated with the specified
instance.}

\item{ServiceErrorIds}{An array of service error IDs. If you use this parameter,
\code{DescribeServiceErrors} returns descriptions of the specified errors.
Otherwise, it returns a description of every error.}
}
\description{
Describes AWS OpsWorks Stacks service errors.
}
\details{
\strong{Required Permissions}: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see \href{https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html}{Managing User Permissions}.

This call accepts only one resource-identifying parameter.
}
\section{Request syntax}{
\preformatted{svc$describe_service_errors(
  StackId = "string",
  InstanceId = "string",
  ServiceErrorIds = list(
    "string"
  )
)
}
}

\keyword{internal}
