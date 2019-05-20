% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_delete_user}
\alias{quicksight_delete_user}
\title{Deletes the Amazon QuickSight user that is associated with the identity
of the AWS Identity and Access Management (IAM) user or role that's
making the call}
\usage{
quicksight_delete_user(UserName, AwsAccountId, Namespace)
}
\arguments{
\item{UserName}{[required] The name of the user that you want to delete.}

\item{AwsAccountId}{[required] The ID for the AWS account that the user is in. Currently, you use the
ID for the AWS account that contains your Amazon QuickSight account.}

\item{Namespace}{[required] The namespace. Currently, you should set this to \code{default}.}
}
\description{
Deletes the Amazon QuickSight user that is associated with the identity
of the AWS Identity and Access Management (IAM) user or role that's
making the call. The IAM user isn't deleted as a result of this call.
}
\details{
The permission resource is
\code{arn:aws:quicksight:us-east-1:<i>&lt;aws-account-id&gt;</i>:user/default/<i>&lt;user-name&gt; </i> }.

\strong{CLI Sample:}

\code{aws quicksight delete-user --aws-account-id=111122223333 --namespace=default --user-name=Pat }
}
\section{Request syntax}{
\preformatted{svc$delete_user(
  UserName = "string",
  AwsAccountId = "string",
  Namespace = "string"
)
}
}

\keyword{internal}