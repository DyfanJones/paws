% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/xray_operations.R
\name{xray_cancel_trace_retrieval}
\alias{xray_cancel_trace_retrieval}
\title{Cancels an ongoing trace retrieval job initiated by StartTraceRetrieval
using the provided RetrievalToken}
\usage{
xray_cancel_trace_retrieval(RetrievalToken)
}
\arguments{
\item{RetrievalToken}{[required] Retrieval token.}
}
\description{
Cancels an ongoing trace retrieval job initiated by \code{\link[=xray_start_trace_retrieval]{start_trace_retrieval}} using the provided \code{RetrievalToken}. A successful cancellation will return an HTTP 200 response.

See \url{https://www.paws-r-sdk.com/docs/xray_cancel_trace_retrieval/} for full documentation.
}
\keyword{internal}
