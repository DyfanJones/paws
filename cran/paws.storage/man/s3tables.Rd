% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3tables_service.R
\name{s3tables}
\alias{s3tables}
\title{Amazon S3 Tables}
\usage{
s3tables(config = list(), credentials = list(), endpoint = NULL, region = NULL)
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.
\itemize{
\item{\strong{credentials}: \itemize{
\item{\strong{creds}: \itemize{
\item{\strong{access_key_id}: AWS access key ID}
\item{\strong{secret_access_key}: AWS secret access key}
\item{\strong{session_token}: AWS temporary session token}
}}
\item{\strong{profile}: The name of a profile to use. If not given, then the default profile is used.}
\item{\strong{anonymous}: Set anonymous credentials.}
}}
\item{\strong{endpoint}: The complete URL to use for the constructed client.}
\item{\strong{region}: The AWS Region used in instantiating the client.}
\item{\strong{close_connection}: Immediately close all HTTP connections.}
\item{\strong{timeout}: The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
\item{\strong{s3_force_path_style}: Set this to \code{true} to force the request to use path-style addressing, i.e. \verb{http://s3.amazonaws.com/BUCKET/KEY}.}
\item{\strong{sts_regional_endpoint}: Set sts regional endpoint resolver to regional or legacy \url{https://docs.aws.amazon.com/sdkref/latest/guide/feature-sts-regionalized-endpoints.html}}
}}

\item{credentials}{Optional credentials shorthand for the config parameter
\itemize{
\item{\strong{creds}: \itemize{
\item{\strong{access_key_id}: AWS access key ID}
\item{\strong{secret_access_key}: AWS secret access key}
\item{\strong{session_token}: AWS temporary session token}
}}
\item{\strong{profile}: The name of a profile to use. If not given, then the default profile is used.}
\item{\strong{anonymous}: Set anonymous credentials.}
}}

\item{endpoint}{Optional shorthand for complete URL to use for the constructed client.}

\item{region}{Optional shorthand for AWS Region used in instantiating the client.}
}
\value{
A client for the service. You can call the service's operations using
syntax like \code{svc$operation(...)}, where \code{svc} is the name you've assigned
to the client. The available operations are listed in the
Operations section.
}
\description{
An Amazon S3 table represents a structured dataset consisting of tabular
data in \href{https://parquet.apache.org/docs/}{Apache Parquet} format and
related metadata. This data is stored inside an S3 table as a
subresource. All tables in a table bucket are stored in the \href{https://iceberg.apache.org/docs/latest/}{Apache Iceberg} table format. Through
integration with the Amazon Web Services Glue Data Catalog you can
interact with your tables using Amazon Web Services analytics services,
such as Amazon Athena and Amazon Redshift. Amazon S3 manages maintenance
of your tables through automatic file compaction and snapshot
management. For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets.html}{Amazon S3 table buckets}.
}
\section{Service syntax}{


\if{html}{\out{<div class="sourceCode">}}\preformatted{svc <- s3tables(
  config = list(
    credentials = list(
      creds = list(
        access_key_id = "string",
        secret_access_key = "string",
        session_token = "string"
      ),
      profile = "string",
      anonymous = "logical"
    ),
    endpoint = "string",
    region = "string",
    close_connection = "logical",
    timeout = "numeric",
    s3_force_path_style = "logical",
    sts_regional_endpoint = "string"
  ),
  credentials = list(
    creds = list(
      access_key_id = "string",
      secret_access_key = "string",
      session_token = "string"
    ),
    profile = "string",
    anonymous = "logical"
  ),
  endpoint = "string",
  region = "string"
)
}\if{html}{\out{</div>}}
}

\section{Operations}{

\tabular{ll}{
\link[=s3tables_create_namespace]{create_namespace} \tab Creates a namespace\cr
\link[=s3tables_create_table]{create_table} \tab Creates a new table associated with the given namespace in a table bucket\cr
\link[=s3tables_create_table_bucket]{create_table_bucket} \tab Creates a table bucket\cr
\link[=s3tables_delete_namespace]{delete_namespace} \tab Deletes a namespace\cr
\link[=s3tables_delete_table]{delete_table} \tab Deletes a table\cr
\link[=s3tables_delete_table_bucket]{delete_table_bucket} \tab Deletes a table bucket\cr
\link[=s3tables_delete_table_bucket_encryption]{delete_table_bucket_encryption} \tab Deletes the encryption configuration for a table bucket\cr
\link[=s3tables_delete_table_bucket_policy]{delete_table_bucket_policy} \tab Deletes a table bucket policy\cr
\link[=s3tables_delete_table_policy]{delete_table_policy} \tab Deletes a table policy\cr
\link[=s3tables_get_namespace]{get_namespace} \tab Gets details about a namespace\cr
\link[=s3tables_get_table]{get_table} \tab Gets details about a table\cr
\link[=s3tables_get_table_bucket]{get_table_bucket} \tab Gets details on a table bucket\cr
\link[=s3tables_get_table_bucket_encryption]{get_table_bucket_encryption} \tab Gets the encryption configuration for a table bucket\cr
\link[=s3tables_get_table_bucket_maintenance_configuration]{get_table_bucket_maintenance_configuration} \tab Gets details about a maintenance configuration for a given table bucket\cr
\link[=s3tables_get_table_bucket_policy]{get_table_bucket_policy} \tab Gets details about a table bucket policy\cr
\link[=s3tables_get_table_encryption]{get_table_encryption} \tab Gets the encryption configuration for a table\cr
\link[=s3tables_get_table_maintenance_configuration]{get_table_maintenance_configuration} \tab Gets details about the maintenance configuration of a table\cr
\link[=s3tables_get_table_maintenance_job_status]{get_table_maintenance_job_status} \tab Gets the status of a maintenance job for a table\cr
\link[=s3tables_get_table_metadata_location]{get_table_metadata_location} \tab Gets the location of the table metadata\cr
\link[=s3tables_get_table_policy]{get_table_policy} \tab Gets details about a table policy\cr
\link[=s3tables_list_namespaces]{list_namespaces} \tab Lists the namespaces within a table bucket\cr
\link[=s3tables_list_table_buckets]{list_table_buckets} \tab Lists table buckets for your account\cr
\link[=s3tables_list_tables]{list_tables} \tab List tables in the given table bucket\cr
\link[=s3tables_put_table_bucket_encryption]{put_table_bucket_encryption} \tab Sets the encryption configuration for a table bucket\cr
\link[=s3tables_put_table_bucket_maintenance_configuration]{put_table_bucket_maintenance_configuration} \tab Creates a new maintenance configuration or replaces an existing maintenance configuration for a table bucket\cr
\link[=s3tables_put_table_bucket_policy]{put_table_bucket_policy} \tab Creates a new maintenance configuration or replaces an existing table bucket policy for a table bucket\cr
\link[=s3tables_put_table_maintenance_configuration]{put_table_maintenance_configuration} \tab Creates a new maintenance configuration or replaces an existing maintenance configuration for a table\cr
\link[=s3tables_put_table_policy]{put_table_policy} \tab Creates a new maintenance configuration or replaces an existing table policy for a table\cr
\link[=s3tables_rename_table]{rename_table} \tab Renames a table or a namespace\cr
\link[=s3tables_update_table_metadata_location]{update_table_metadata_location} \tab Updates the metadata location for a table
}
}

\examples{
\dontrun{
svc <- s3tables()
svc$create_namespace(
  Foo = 123
)
}

}
