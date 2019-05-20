% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elasticache_operations.R
\name{elasticache_describe_engine_default_parameters}
\alias{elasticache_describe_engine_default_parameters}
\title{Returns the default engine and system parameter information for the
specified cache engine}
\usage{
elasticache_describe_engine_default_parameters(
  CacheParameterGroupFamily, MaxRecords, Marker)
}
\arguments{
\item{CacheParameterGroupFamily}{[required] The name of the cache parameter group family.

Valid values are: \code{memcached1.4} \| \code{redis2.6} \| \code{redis2.8} \|
\code{redis3.2} \| \code{redis4.0}}

\item{MaxRecords}{The maximum number of records to include in the response. If more
records exist than the specified \code{MaxRecords} value, a marker is
included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: minimum 20; maximum 100.}

\item{Marker}{An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by \code{MaxRecords}.}
}
\description{
Returns the default engine and system parameter information for the
specified cache engine.
}
\section{Request syntax}{
\preformatted{svc$describe_engine_default_parameters(
  CacheParameterGroupFamily = "string",
  MaxRecords = 123,
  Marker = "string"
)
}
}

\keyword{internal}