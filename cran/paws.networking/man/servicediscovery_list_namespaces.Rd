% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/servicediscovery_operations.R
\name{servicediscovery_list_namespaces}
\alias{servicediscovery_list_namespaces}
\title{Lists summary information about the namespaces that were created by the
current AWS account}
\usage{
servicediscovery_list_namespaces(NextToken, MaxResults, Filters)
}
\arguments{
\item{NextToken}{For the first \code{ListNamespaces} request, omit this value.

If the response contains \code{NextToken}, submit another \code{ListNamespaces}
request to get the next group of results. Specify the value of
\code{NextToken} from the previous response in the next request.

AWS Cloud Map gets \code{MaxResults} namespaces and then filters them based
on the specified criteria. It's possible that no namespaces in the
first \code{MaxResults} namespaces matched the specified criteria but that
subsequent groups of \code{MaxResults} namespaces do contain namespaces that
match the criteria.}

\item{MaxResults}{The maximum number of namespaces that you want AWS Cloud Map to return
in the response to a \code{ListNamespaces} request. If you don't specify a
value for \code{MaxResults}, AWS Cloud Map returns up to 100 namespaces.}

\item{Filters}{A complex type that contains specifications for the namespaces that you
want to list.

If you specify more than one filter, a namespace must match all filters
to be returned by \code{ListNamespaces}.}
}
\description{
Lists summary information about the namespaces that were created by the
current AWS account.
}
\section{Request syntax}{
\preformatted{svc$list_namespaces(
  NextToken = "string",
  MaxResults = 123,
  Filters = list(
    list(
      Name = "TYPE",
      Values = list(
        "string"
      ),
      Condition = "EQ"|"IN"|"BETWEEN"
    )
  )
)
}
}

\keyword{internal}