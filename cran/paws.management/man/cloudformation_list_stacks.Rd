% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudformation_operations.R
\name{cloudformation_list_stacks}
\alias{cloudformation_list_stacks}
\title{Returns the summary information for stacks whose status matches the
specified StackStatusFilter}
\usage{
cloudformation_list_stacks(NextToken, StackStatusFilter)
}
\arguments{
\item{NextToken}{A string that identifies the next page of stacks that you want to
retrieve.}

\item{StackStatusFilter}{Stack status to use as a filter. Specify one or more stack status codes
to list only stacks with the specified status codes. For a complete list
of stack status codes, see the \code{StackStatus} parameter of the Stack data
type.}
}
\description{
Returns the summary information for stacks whose status matches the
specified StackStatusFilter. Summary information for stacks that have
been deleted is kept for 90 days after the stack is deleted. If no
StackStatusFilter is specified, summary information for all stacks is
returned (including existing stacks and stacks that have been deleted).
}
\section{Request syntax}{
\preformatted{svc$list_stacks(
  NextToken = "string",
  StackStatusFilter = list(
    "CREATE_IN_PROGRESS"|"CREATE_FAILED"|"CREATE_COMPLETE"|"ROLLBACK_IN_PROGRESS"|"ROLLBACK_FAILED"|"ROLLBACK_COMPLETE"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"DELETE_COMPLETE"|"UPDATE_IN_PROGRESS"|"UPDATE_COMPLETE_CLEANUP_IN_PROGRESS"|"UPDATE_COMPLETE"|"UPDATE_ROLLBACK_IN_PROGRESS"|"UPDATE_ROLLBACK_FAILED"|"UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS"|"UPDATE_ROLLBACK_COMPLETE"|"REVIEW_IN_PROGRESS"
  )
)
}
}

\keyword{internal}