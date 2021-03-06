% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudformation_operations.R
\name{cloudformation_set_stack_policy}
\alias{cloudformation_set_stack_policy}
\title{Sets a stack policy for a specified stack}
\usage{
cloudformation_set_stack_policy(StackName, StackPolicyBody,
  StackPolicyURL)
}
\arguments{
\item{StackName}{[required] The name or unique stack ID that you want to associate a policy with.}

\item{StackPolicyBody}{Structure containing the stack policy body. For more information, go to
\href{https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html}{Prevent Updates to Stack Resources}
in the AWS CloudFormation User Guide. You can specify either the
\code{StackPolicyBody} or the \code{StackPolicyURL} parameter, but not both.}

\item{StackPolicyURL}{Location of a file containing the stack policy. The URL must point to a
policy (maximum size: 16 KB) located in an S3 bucket in the same Region
as the stack. You can specify either the \code{StackPolicyBody} or the
\code{StackPolicyURL} parameter, but not both.}
}
\description{
Sets a stack policy for a specified stack.
}
\section{Request syntax}{
\preformatted{svc$set_stack_policy(
  StackName = "string",
  StackPolicyBody = "string",
  StackPolicyURL = "string"
)
}
}

\keyword{internal}
