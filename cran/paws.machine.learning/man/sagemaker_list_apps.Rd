% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_list_apps}
\alias{sagemaker_list_apps}
\title{Lists apps}
\usage{
sagemaker_list_apps(NextToken, MaxResults, SortOrder, SortBy,
  DomainIdEquals, UserProfileNameEquals)
}
\arguments{
\item{NextToken}{If the previous response was truncated, you will receive this token. Use
it in your next request to receive the next set of results.}

\item{MaxResults}{Returns a list up to a specified limit.}

\item{SortOrder}{The sort order for the results. The default is Ascending.}

\item{SortBy}{The parameter by which to sort the results. The default is CreationTime.}

\item{DomainIdEquals}{A parameter to search for the domain ID.}

\item{UserProfileNameEquals}{A parameter to search by user profile name.}
}
\description{
Lists apps.
}
\section{Request syntax}{
\preformatted{svc$list_apps(
  NextToken = "string",
  MaxResults = 123,
  SortOrder = "Ascending"|"Descending",
  SortBy = "CreationTime",
  DomainIdEquals = "string",
  UserProfileNameEquals = "string"
)
}
}

\keyword{internal}
