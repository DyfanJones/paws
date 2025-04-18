% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rds_operations.R
\name{rds_create_integration}
\alias{rds_create_integration}
\title{Creates a zero-ETL integration with Amazon Redshift}
\usage{
rds_create_integration(
  SourceArn,
  TargetArn,
  IntegrationName,
  KMSKeyId = NULL,
  AdditionalEncryptionContext = NULL,
  Tags = NULL,
  DataFilter = NULL,
  Description = NULL
)
}
\arguments{
\item{SourceArn}{[required] The Amazon Resource Name (ARN) of the database to use as the source for
replication.}

\item{TargetArn}{[required] The ARN of the Redshift data warehouse to use as the target for
replication.}

\item{IntegrationName}{[required] The name of the integration.}

\item{KMSKeyId}{The Amazon Web Services Key Management System (Amazon Web Services KMS)
key identifier for the key to use to encrypt the integration. If you
don't specify an encryption key, RDS uses a default Amazon Web Services
owned key.}

\item{AdditionalEncryptionContext}{An optional set of non-secret key–value pairs that contains additional
contextual information about the data. For more information, see
\href{https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context}{Encryption context}
in the \emph{Amazon Web Services Key Management Service Developer Guide}.

You can only include this parameter if you specify the \code{KMSKeyId}
parameter.}

\item{Tags}{}

\item{DataFilter}{Data filtering options for the integration. For more information, see
\href{https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/zero-etl.filtering.html}{Data filtering for Aurora zero-ETL integrations with Amazon Redshift}
or \href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/zero-etl.filtering.html}{Data filtering for Amazon RDS zero-ETL integrations with Amazon Redshift}.}

\item{Description}{A description of the integration.}
}
\description{
Creates a zero-ETL integration with Amazon Redshift.

See \url{https://www.paws-r-sdk.com/docs/rds_create_integration/} for full documentation.
}
\keyword{internal}
