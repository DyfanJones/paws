% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/efs_service.R
\name{efs}
\alias{efs}
\title{Amazon Elastic File System}
\usage{
efs(config = list(), credentials = list(), endpoint = NULL, region = NULL)
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
Amazon Elastic File System (Amazon EFS) provides simple, scalable file
storage for use with Amazon EC2 Linux and Mac instances in the Amazon
Web Services Cloud. With Amazon EFS, storage capacity is elastic,
growing and shrinking automatically as you add and remove files, so that
your applications have the storage they need, when they need it. For
more information, see the \href{https://docs.aws.amazon.com/efs/latest/ug/api-reference.html}{Amazon Elastic File System API Reference}
and the \href{https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html}{Amazon Elastic File System User Guide}.
}
\section{Service syntax}{


\if{html}{\out{<div class="sourceCode">}}\preformatted{svc <- efs(
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
\link[=efs_create_access_point]{create_access_point} \tab Creates an EFS access point\cr
\link[=efs_create_file_system]{create_file_system} \tab Creates a new, empty file system\cr
\link[=efs_create_mount_target]{create_mount_target} \tab Creates a mount target for a file system\cr
\link[=efs_create_replication_configuration]{create_replication_configuration} \tab Creates a replication configuration to either a new or existing EFS file system\cr
\link[=efs_create_tags]{create_tags} \tab DEPRECATED - CreateTags is deprecated and not maintained\cr
\link[=efs_delete_access_point]{delete_access_point} \tab Deletes the specified access point\cr
\link[=efs_delete_file_system]{delete_file_system} \tab Deletes a file system, permanently severing access to its contents\cr
\link[=efs_delete_file_system_policy]{delete_file_system_policy} \tab Deletes the FileSystemPolicy for the specified file system\cr
\link[=efs_delete_mount_target]{delete_mount_target} \tab Deletes the specified mount target\cr
\link[=efs_delete_replication_configuration]{delete_replication_configuration} \tab Deletes a replication configuration\cr
\link[=efs_delete_tags]{delete_tags} \tab DEPRECATED - DeleteTags is deprecated and not maintained\cr
\link[=efs_describe_access_points]{describe_access_points} \tab Returns the description of a specific Amazon EFS access point if the AccessPointId is provided\cr
\link[=efs_describe_account_preferences]{describe_account_preferences} \tab Returns the account preferences settings for the Amazon Web Services account associated with the user making the request, in the current Amazon Web Services Region\cr
\link[=efs_describe_backup_policy]{describe_backup_policy} \tab Returns the backup policy for the specified EFS file system\cr
\link[=efs_describe_file_system_policy]{describe_file_system_policy} \tab Returns the FileSystemPolicy for the specified EFS file system\cr
\link[=efs_describe_file_systems]{describe_file_systems} \tab Returns the description of a specific Amazon EFS file system if either the file system CreationToken or the FileSystemId is provided\cr
\link[=efs_describe_lifecycle_configuration]{describe_lifecycle_configuration} \tab Returns the current LifecycleConfiguration object for the specified Amazon EFS file system\cr
\link[=efs_describe_mount_targets]{describe_mount_targets} \tab Returns the descriptions of all the current mount targets, or a specific mount target, for a file system\cr
\link[=efs_describe_mount_target_security_groups]{describe_mount_target_security_groups} \tab Returns the security groups currently in effect for a mount target\cr
\link[=efs_describe_replication_configurations]{describe_replication_configurations} \tab Retrieves the replication configuration for a specific file system\cr
\link[=efs_describe_tags]{describe_tags} \tab DEPRECATED - The DescribeTags action is deprecated and not maintained\cr
\link[=efs_list_tags_for_resource]{list_tags_for_resource} \tab Lists all tags for a top-level EFS resource\cr
\link[=efs_modify_mount_target_security_groups]{modify_mount_target_security_groups} \tab Modifies the set of security groups in effect for a mount target\cr
\link[=efs_put_account_preferences]{put_account_preferences} \tab Use this operation to set the account preference in the current Amazon Web Services Region to use long 17 character (63 bit) or short 8 character (32 bit) resource IDs for new EFS file system and mount target resources\cr
\link[=efs_put_backup_policy]{put_backup_policy} \tab Updates the file system's backup policy\cr
\link[=efs_put_file_system_policy]{put_file_system_policy} \tab Applies an Amazon EFS FileSystemPolicy to an Amazon EFS file system\cr
\link[=efs_put_lifecycle_configuration]{put_lifecycle_configuration} \tab Use this action to manage storage for your file system\cr
\link[=efs_tag_resource]{tag_resource} \tab Creates a tag for an EFS resource\cr
\link[=efs_untag_resource]{untag_resource} \tab Removes tags from an EFS resource\cr
\link[=efs_update_file_system]{update_file_system} \tab Updates the throughput mode or the amount of provisioned throughput of an existing file system\cr
\link[=efs_update_file_system_protection]{update_file_system_protection} \tab Updates protection on the file system
}
}

\examples{
\dontrun{
svc <- efs()
# This operation creates a new, encrypted file system with automatic
# backups enabled, and the default generalpurpose performance mode.
svc$create_file_system(
  Backup = TRUE,
  CreationToken = "tokenstring",
  Encrypted = TRUE,
  PerformanceMode = "generalPurpose",
  Tags = list(
    list(
      Key = "Name",
      Value = "MyFileSystem"
    )
  )
)
}

}
