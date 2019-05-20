% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rds_operations.R
\name{rds_promote_read_replica_db_cluster}
\alias{rds_promote_read_replica_db_cluster}
\title{Promotes a Read Replica DB cluster to a standalone DB cluster}
\usage{
rds_promote_read_replica_db_cluster(DBClusterIdentifier)
}
\arguments{
\item{DBClusterIdentifier}{[required] The identifier of the DB cluster Read Replica to promote. This parameter
is not case-sensitive.

Constraints:
\itemize{
\item Must match the identifier of an existing DBCluster Read Replica.
}

Example: \code{my-cluster-replica1}}
}
\description{
Promotes a Read Replica DB cluster to a standalone DB cluster.
}
\details{
This action only applies to Aurora DB clusters.
}
\section{Request syntax}{
\preformatted{svc$promote_read_replica_db_cluster(
  DBClusterIdentifier = "string"
)
}
}

\keyword{internal}