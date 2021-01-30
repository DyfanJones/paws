% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_update_account_customization}
\alias{quicksight_update_account_customization}
\title{Updates Amazon QuickSight customizations the current AWS Region}
\usage{
quicksight_update_account_customization(AwsAccountId, Namespace,
  AccountCustomization)
}
\arguments{
\item{AwsAccountId}{[required] The ID for the AWS account that you want to update QuickSight
customizations for.}

\item{Namespace}{The namespace that you want to update QuickSight customizations for.}

\item{AccountCustomization}{[required] The QuickSight customizations you're updating in the current AWS Region.}
}
\description{
Updates Amazon QuickSight customizations the current AWS Region.
Currently, the only customization you can use is a theme.

You can use customizations for your AWS account or, if you specify a
namespace, for a QuickSight namespace instead. Customizations that apply
to a namespace override customizations that apply to an AWS account. To
find out which customizations apply, use the
\code{DescribeAccountCustomization} API operation.
}
\section{Request syntax}{
\preformatted{svc$update_account_customization(
  AwsAccountId = "string",
  Namespace = "string",
  AccountCustomization = list(
    DefaultTheme = "string"
  )
)
}
}

\keyword{internal}