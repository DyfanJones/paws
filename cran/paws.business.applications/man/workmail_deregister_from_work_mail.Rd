% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workmail_operations.R
\name{workmail_deregister_from_work_mail}
\alias{workmail_deregister_from_work_mail}
\title{Mark a user, group, or resource as no longer used in Amazon WorkMail}
\usage{
workmail_deregister_from_work_mail(OrganizationId, EntityId)
}
\arguments{
\item{OrganizationId}{[required] The identifier for the organization under which the Amazon WorkMail
entity exists.}

\item{EntityId}{[required] The identifier for the member (user or group) to be updated.}
}
\description{
Mark a user, group, or resource as no longer used in Amazon WorkMail.
This action disassociates the mailbox and schedules it for clean-up.
WorkMail keeps mailboxes for 30 days before they are permanently
removed. The functionality in the console is \emph{Disable}.
}
\section{Request syntax}{
\preformatted{svc$deregister_from_work_mail(
  OrganizationId = "string",
  EntityId = "string"
)
}
}

\keyword{internal}
