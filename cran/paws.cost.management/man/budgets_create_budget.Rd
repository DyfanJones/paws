% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/budgets_operations.R
\name{budgets_create_budget}
\alias{budgets_create_budget}
\title{Creates a budget and, if included, notifications and subscribers}
\usage{
budgets_create_budget(
  AccountId,
  Budget,
  NotificationsWithSubscribers = NULL,
  ResourceTags = NULL
)
}
\arguments{
\item{AccountId}{[required] The \code{accountId} that is associated with the budget.}

\item{Budget}{[required] The budget object that you want to create.}

\item{NotificationsWithSubscribers}{A notification that you want to associate with a budget. A budget can
have up to five notifications, and each notification can have one SNS
subscriber and up to 10 email subscribers. If you include notifications
and subscribers in your \code{\link[=budgets_create_budget]{create_budget}} call,
Amazon Web Services creates the notifications and subscribers for you.}

\item{ResourceTags}{An optional list of tags to associate with the specified budget. Each
tag consists of a key and a value, and each key must be unique for the
resource.}
}
\description{
Creates a budget and, if included, notifications and subscribers.

See \url{https://www.paws-r-sdk.com/docs/budgets_create_budget/} for full documentation.
}
\keyword{internal}
