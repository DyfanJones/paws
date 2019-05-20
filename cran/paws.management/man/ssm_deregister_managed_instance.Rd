% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssm_operations.R
\name{ssm_deregister_managed_instance}
\alias{ssm_deregister_managed_instance}
\title{Removes the server or virtual machine from the list of registered
servers}
\usage{
ssm_deregister_managed_instance(InstanceId)
}
\arguments{
\item{InstanceId}{[required] The ID assigned to the managed instance when you registered it using the
activation process.}
}
\description{
Removes the server or virtual machine from the list of registered
servers. You can reregister the instance again at any time. If you
don't plan to use Run Command on the server, we suggest uninstalling
SSM Agent first.
}
\section{Request syntax}{
\preformatted{svc$deregister_managed_instance(
  InstanceId = "string"
)
}
}

\keyword{internal}