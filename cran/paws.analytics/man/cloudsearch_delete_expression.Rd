% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudsearch_operations.R
\name{cloudsearch_delete_expression}
\alias{cloudsearch_delete_expression}
\title{Removes an Expression from the search domain}
\usage{
cloudsearch_delete_expression(DomainName, ExpressionName)
}
\arguments{
\item{DomainName}{[required]}

\item{ExpressionName}{[required] The name of the \verb{<a>Expression</a>} to delete.}
}
\description{
Removes an \verb{<a>Expression</a>} from the search domain. For more
information, see \href{http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html}{Configuring Expressions}
in the \emph{Amazon CloudSearch Developer Guide}.
}
\section{Request syntax}{
\preformatted{svc$delete_expression(
  DomainName = "string",
  ExpressionName = "string"
)
}
}

\keyword{internal}
