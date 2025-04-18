% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudformation_operations.R
\name{cloudformation_create_stack_refactor}
\alias{cloudformation_create_stack_refactor}
\title{Creates a refactor across multiple stacks, with the list of stacks and
resources that are affected}
\usage{
cloudformation_create_stack_refactor(
  Description = NULL,
  EnableStackCreation = NULL,
  ResourceMappings = NULL,
  StackDefinitions
)
}
\arguments{
\item{Description}{A description to help you identify the stack refactor.}

\item{EnableStackCreation}{Determines if a new stack is created with the refactor.}

\item{ResourceMappings}{The mappings for the stack resource \code{Source} and stack resource
\code{Destination}.}

\item{StackDefinitions}{[required] The stacks being refactored.}
}
\description{
Creates a refactor across multiple stacks, with the list of stacks and resources that are affected.

See \url{https://www.paws-r-sdk.com/docs/cloudformation_create_stack_refactor/} for full documentation.
}
\keyword{internal}
