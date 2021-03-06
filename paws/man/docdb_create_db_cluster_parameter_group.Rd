% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/docdb_operations.R
\name{docdb_create_db_cluster_parameter_group}
\alias{docdb_create_db_cluster_parameter_group}
\title{Creates a new cluster parameter group}
\usage{
docdb_create_db_cluster_parameter_group(DBClusterParameterGroupName,
  DBParameterGroupFamily, Description, Tags)
}
\arguments{
\item{DBClusterParameterGroupName}{[required] The name of the cluster parameter group.

Constraints:
\itemize{
\item Must not match the name of an existing \code{DBClusterParameterGroup}.
}

This value is stored as a lowercase string.}

\item{DBParameterGroupFamily}{[required] The cluster parameter group family name.}

\item{Description}{[required] The description for the cluster parameter group.}

\item{Tags}{The tags to be assigned to the cluster parameter group.}
}
\description{
Creates a new cluster parameter group.
}
\details{
Parameters in a cluster parameter group apply to all of the instances in
a DB cluster.

A cluster parameter group is initially created with the default
parameters for the database engine used by instances in the cluster. To
provide custom values for any of the parameters, you must modify the
group after you create it. After you create a DB cluster parameter
group, you must associate it with your cluster. For the new DB cluster
parameter group and associated settings to take effect, you must then
reboot the instances in the cluster without failover.

After you create a cluster parameter group, you should wait at least 5
minutes before creating your first cluster that uses that cluster
parameter group as the default parameter group. This allows Amazon
DocumentDB to fully complete the create action before the cluster
parameter group is used as the default for a new cluster. This step is
especially important for parameters that are critical when creating the
default database for a cluster, such as the character set for the
default database defined by the \code{character_set_database} parameter.
}
\section{Request syntax}{
\preformatted{svc$create_db_cluster_parameter_group(
  DBClusterParameterGroupName = "string",
  DBParameterGroupFamily = "string",
  Description = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\keyword{internal}
