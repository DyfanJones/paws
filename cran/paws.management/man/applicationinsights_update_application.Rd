% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/applicationinsights_operations.R
\name{applicationinsights_update_application}
\alias{applicationinsights_update_application}
\title{Updates the application}
\usage{
applicationinsights_update_application(
  ResourceGroupName,
  OpsCenterEnabled = NULL,
  CWEMonitorEnabled = NULL,
  OpsItemSNSTopicArn = NULL,
  SNSNotificationArn = NULL,
  RemoveSNSTopic = NULL,
  AutoConfigEnabled = NULL,
  AttachMissingPermission = NULL
)
}
\arguments{
\item{ResourceGroupName}{[required] The name of the resource group.}

\item{OpsCenterEnabled}{When set to \code{true}, creates opsItems for any problems detected on an
application.}

\item{CWEMonitorEnabled}{Indicates whether Application Insights can listen to CloudWatch events
for the application resources, such as \verb{instance terminated},
\verb{failed deployment}, and others.}

\item{OpsItemSNSTopicArn}{The SNS topic provided to Application Insights that is associated to the
created opsItem. Allows you to receive notifications for updates to the
opsItem.}

\item{SNSNotificationArn}{The SNS topic ARN. Allows you to receive SNS notifications for updates
and issues with an application.}

\item{RemoveSNSTopic}{Disassociates the SNS topic from the opsItem created for detected
problems.}

\item{AutoConfigEnabled}{Turns auto-configuration on or off.}

\item{AttachMissingPermission}{If set to true, the managed policies for SSM and CW will be attached to
the instance roles if they are missing.}
}
\description{
Updates the application.

See \url{https://www.paws-r-sdk.com/docs/applicationinsights_update_application/} for full documentation.
}
\keyword{internal}
