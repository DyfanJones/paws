% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rds_operations.R
\name{rds_describe_db_engine_versions}
\alias{rds_describe_db_engine_versions}
\title{Describes the properties of specific versions of DB engines}
\usage{
rds_describe_db_engine_versions(
  Engine = NULL,
  EngineVersion = NULL,
  DBParameterGroupFamily = NULL,
  Filters = NULL,
  MaxRecords = NULL,
  Marker = NULL,
  DefaultOnly = NULL,
  ListSupportedCharacterSets = NULL,
  ListSupportedTimezones = NULL,
  IncludeAll = NULL
)
}
\arguments{
\item{Engine}{The database engine to return version details for.

Valid Values:
\itemize{
\item \code{aurora-mysql}
\item \code{aurora-postgresql}
\item \code{custom-oracle-ee}
\item \code{custom-oracle-ee-cdb}
\item \code{custom-oracle-se2}
\item \code{custom-oracle-se2-cdb}
\item \code{db2-ae}
\item \code{db2-se}
\item \code{mariadb}
\item \code{mysql}
\item \code{oracle-ee}
\item \code{oracle-ee-cdb}
\item \code{oracle-se2}
\item \code{oracle-se2-cdb}
\item \code{postgres}
\item \code{sqlserver-ee}
\item \code{sqlserver-se}
\item \code{sqlserver-ex}
\item \code{sqlserver-web}
}}

\item{EngineVersion}{A specific database engine version to return details for.

Example: \verb{5.1.49}}

\item{DBParameterGroupFamily}{The name of a specific DB parameter group family to return details for.

Constraints:
\itemize{
\item If supplied, must match an existing DB parameter group family.
}}

\item{Filters}{A filter that specifies one or more DB engine versions to describe.

Supported filters:
\itemize{
\item \code{db-parameter-group-family} - Accepts parameter groups family names.
The results list only includes information about the DB engine
versions for these parameter group families.
\item \code{engine} - Accepts engine names. The results list only includes
information about the DB engine versions for these engines.
\item \code{engine-mode} - Accepts DB engine modes. The results list only
includes information about the DB engine versions for these engine
modes. Valid DB engine modes are the following:
\itemize{
\item \code{global}
\item \code{multimaster}
\item \code{parallelquery}
\item \code{provisioned}
\item \code{serverless}
}
\item \code{engine-version} - Accepts engine versions. The results list only
includes information about the DB engine versions for these engine
versions.
\item \code{status} - Accepts engine version statuses. The results list only
includes information about the DB engine versions for these
statuses. Valid statuses are the following:
\itemize{
\item \code{available}
\item \code{deprecated}
}
}}

\item{MaxRecords}{The maximum number of records to include in the response. If more than
the \code{MaxRecords} value is available, a pagination token called a marker
is included in the response so you can retrieve the remaining results.

Default: 100

Constraints: Minimum 20, maximum 100.}

\item{Marker}{An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by \code{MaxRecords}.}

\item{DefaultOnly}{Specifies whether to return only the default version of the specified
engine or the engine and major version combination.}

\item{ListSupportedCharacterSets}{Specifies whether to list the supported character sets for each engine
version.

If this parameter is enabled and the requested engine supports the
\code{CharacterSetName} parameter for
\code{\link[=rds_create_db_instance]{create_db_instance}}, the response includes a
list of supported character sets for each engine version.

For RDS Custom, the default is not to list supported character sets. If
you enable this parameter, RDS Custom returns no results.}

\item{ListSupportedTimezones}{Specifies whether to list the supported time zones for each engine
version.

If this parameter is enabled and the requested engine supports the
\code{TimeZone} parameter for \code{\link[=rds_create_db_instance]{create_db_instance}},
the response includes a list of supported time zones for each engine
version.

For RDS Custom, the default is not to list supported time zones. If you
enable this parameter, RDS Custom returns no results.}

\item{IncludeAll}{Specifies whether to also list the engine versions that aren't
available. The default is to list only available engine versions.}
}
\description{
Describes the properties of specific versions of DB engines.

See \url{https://www.paws-r-sdk.com/docs/rds_describe_db_engine_versions/} for full documentation.
}
\keyword{internal}
