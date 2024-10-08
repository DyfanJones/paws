% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/backup_operations.R
\name{backup_update_restore_testing_plan}
\alias{backup_update_restore_testing_plan}
\title{This request will send changes to your specified restore testing plan}
\usage{
backup_update_restore_testing_plan(RestoreTestingPlan, RestoreTestingPlanName)
}
\arguments{
\item{RestoreTestingPlan}{[required] Specifies the body of a restore testing plan.}

\item{RestoreTestingPlanName}{[required] The name of the restore testing plan name.}
}
\description{
This request will send changes to your specified restore testing plan. \code{RestoreTestingPlanName} cannot be updated after it is created.

See \url{https://www.paws-r-sdk.com/docs/backup_update_restore_testing_plan/} for full documentation.
}
\keyword{internal}
