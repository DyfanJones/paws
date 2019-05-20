% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_cancel_conversion_task}
\alias{ec2_cancel_conversion_task}
\title{Cancels an active conversion task}
\usage{
ec2_cancel_conversion_task(ConversionTaskId, DryRun, ReasonMessage)
}
\arguments{
\item{ConversionTaskId}{[required] The ID of the conversion task.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{ReasonMessage}{The reason for canceling the conversion task.}
}
\description{
Cancels an active conversion task. The task can be the import of an
instance or volume. The action removes all artifacts of the conversion,
including a partially uploaded volume or instance. If the conversion is
complete or is in the process of transferring the final disk image, the
command fails and returns an exception.
}
\details{
For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/ec2-cli-vmimport-export.html}{Importing a Virtual Machine Using the Amazon EC2 CLI}.
}
\section{Request syntax}{
\preformatted{svc$cancel_conversion_task(
  ConversionTaskId = "string",
  DryRun = TRUE|FALSE,
  ReasonMessage = "string"
)
}
}

\keyword{internal}