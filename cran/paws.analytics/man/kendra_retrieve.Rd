% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kendra_operations.R
\name{kendra_retrieve}
\alias{kendra_retrieve}
\title{Retrieves relevant passages or text excerpts given an input query}
\usage{
kendra_retrieve(
  IndexId,
  QueryText,
  AttributeFilter = NULL,
  RequestedDocumentAttributes = NULL,
  DocumentRelevanceOverrideConfigurations = NULL,
  PageNumber = NULL,
  PageSize = NULL,
  UserContext = NULL
)
}
\arguments{
\item{IndexId}{[required] The identifier of the index to retrieve relevant passages for the
search.}

\item{QueryText}{[required] The input query text to retrieve relevant passages for the search.
Amazon Kendra truncates queries at 30 token words, which excludes
punctuation and stop words. Truncation still applies if you use Boolean
or more advanced, complex queries. For example,
\verb{Timeoff AND October AND Category:HR} is counted as 3 tokens: \code{timeoff},
\code{october}, \code{hr}. For more information, see \href{https://docs.aws.amazon.com/kendra/latest/dg/searching-example.html#searching-index-query-syntax}{Searching with advanced query syntax}
in the Amazon Kendra Developer Guide.}

\item{AttributeFilter}{Filters search results by document fields/attributes. You can only
provide one attribute filter; however, the \code{AndAllFilters}, \code{NotFilter},
and \code{OrAllFilters} parameters contain a list of other filters.

The \code{AttributeFilter} parameter means you can create a set of filtering
rules that a document must satisfy to be included in the query results.

For Amazon Kendra Gen AI Enterprise Edition indices use
\code{AttributeFilter} to enable document filtering for end users using
\verb{_email_id} or include public documents (\verb{_email_id=null}).}

\item{RequestedDocumentAttributes}{A list of document fields/attributes to include in the response. You can
limit the response to include certain document fields. By default, all
document fields are included in the response.}

\item{DocumentRelevanceOverrideConfigurations}{Overrides relevance tuning configurations of fields/attributes set at
the index level.

If you use this API to override the relevance tuning configured at the
index level, but there is no relevance tuning configured at the index
level, then Amazon Kendra does not apply any relevance tuning.

If there is relevance tuning configured for fields at the index level,
and you use this API to override only some of these fields, then for the
fields you did not override, the importance is set to 1.}

\item{PageNumber}{Retrieved relevant passages are returned in pages the size of the
\code{PageSize} parameter. By default, Amazon Kendra returns the first page
of results. Use this parameter to get result pages after the first one.}

\item{PageSize}{Sets the number of retrieved relevant passages that are returned in each
page of results. The default page size is 10. The maximum number of
results returned is 100. If you ask for more than 100 results, only 100
are returned.}

\item{UserContext}{The user context token or user and group information.}
}
\description{
Retrieves relevant passages or text excerpts given an input query.

See \url{https://www.paws-r-sdk.com/docs/kendra_retrieve/} for full documentation.
}
\keyword{internal}
