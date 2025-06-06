% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudformation_operations.R
\name{cloudformation_detect_stack_resource_drift}
\alias{cloudformation_detect_stack_resource_drift}
\title{Returns information about whether a resource's actual configuration
differs, or has drifted, from its expected configuration, as defined in
the stack template and any values specified as template parameters}
\usage{
cloudformation_detect_stack_resource_drift(StackName, LogicalResourceId)
}
\arguments{
\item{StackName}{[required] The name of the stack to which the resource belongs.}

\item{LogicalResourceId}{[required] The logical name of the resource for which to return drift information.}
}
\description{
Returns information about whether a resource's actual configuration differs, or has \emph{drifted}, from its expected configuration, as defined in the stack template and any values specified as template parameters. This information includes actual and expected property values for resources in which CloudFormation detects drift. Only resource properties explicitly defined in the stack template are checked for drift. For more information about stack and resource drift, see \href{https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html}{Detect unmanaged configuration changes to stacks and resources with drift detection}.

See \url{https://www.paws-r-sdk.com/docs/cloudformation_detect_stack_resource_drift/} for full documentation.
}
\keyword{internal}
