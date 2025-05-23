# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' AWS Secrets Manager
#'
#' @description
#' Amazon Web Services Secrets Manager
#' 
#' Amazon Web Services Secrets Manager provides a service to enable you to
#' store, manage, and retrieve, secrets.
#' 
#' This guide provides descriptions of the Secrets Manager API. For more
#' information about using this service, see the [Amazon Web Services
#' Secrets Manager User
#' Guide](https://docs.aws.amazon.com/secretsmanager/latest/userguide/).
#' 
#' **API Version**
#' 
#' This version of the Secrets Manager API Reference documents the Secrets
#' Manager API version 2017-10-17.
#' 
#' For a list of endpoints, see [Amazon Web Services Secrets Manager
#' endpoints](https://docs.aws.amazon.com/secretsmanager/latest/userguide/asm_access.html#endpoints).
#' 
#' **Support and Feedback for Amazon Web Services Secrets Manager**
#' 
#' We welcome your feedback. Send your comments to
#' <awssecretsmanager-feedback@@amazon.com>, or post your feedback and
#' questions in the Amazon Web Services Secrets Manager Discussion Forum.
#' For more information about the Amazon Web Services Discussion Forums,
#' see Forums Help.
#' 
#' **Logging API Requests**
#' 
#' Amazon Web Services Secrets Manager supports Amazon Web Services
#' CloudTrail, a service that records Amazon Web Services API calls for
#' your Amazon Web Services account and delivers log files to an Amazon S3
#' bucket. By using information that's collected by Amazon Web Services
#' CloudTrail, you can determine the requests successfully made to Secrets
#' Manager, who made the request, when it was made, and so on. For more
#' about Amazon Web Services Secrets Manager and support for Amazon Web
#' Services CloudTrail, see [Logging Amazon Web Services Secrets Manager
#' Events with Amazon Web Services
#' CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring.html#monitoring_cloudtrail)
#' in the *Amazon Web Services Secrets Manager User Guide*. To learn more
#' about CloudTrail, including enabling it and find your log files, see the
#' [Amazon Web Services CloudTrail User
#' Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{credentials}: \itemize{
#' \item{\strong{creds}: \itemize{
#' \item{\strong{access_key_id}: AWS access key ID}
#' \item{\strong{secret_access_key}: AWS secret access key}
#' \item{\strong{session_token}: AWS temporary session token}
#' }}
#' \item{\strong{profile}: The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}: Set anonymous credentials.}
#' }}
#' \item{\strong{endpoint}: The complete URL to use for the constructed client.}
#' \item{\strong{region}: The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}: Immediately close all HTTP connections.}
#' \item{\strong{timeout}: The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}: Set this to `true` to force the request to use path-style addressing, i.e. `http://s3.amazonaws.com/BUCKET/KEY`.}
#' \item{\strong{sts_regional_endpoint}: Set sts regional endpoint resolver to regional or legacy \url{https://docs.aws.amazon.com/sdkref/latest/guide/feature-sts-regionalized-endpoints.html}}
#' }
#' @param
#' credentials
#' Optional credentials shorthand for the config parameter
#' \itemize{
#' \item{\strong{creds}: \itemize{
#' \item{\strong{access_key_id}: AWS access key ID}
#' \item{\strong{secret_access_key}: AWS secret access key}
#' \item{\strong{session_token}: AWS temporary session token}
#' }}
#' \item{\strong{profile}: The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}: Set anonymous credentials.}
#' }
#' @param
#' endpoint
#' Optional shorthand for complete URL to use for the constructed client.
#' @param
#' region
#' Optional shorthand for AWS Region used in instantiating the client.
#'
#' @section Service syntax:
#' ```
#' svc <- secretsmanager(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical",
#'     sts_regional_endpoint = "string"
#'   ),
#'   credentials = list(
#'     creds = list(
#'       access_key_id = "string",
#'       secret_access_key = "string",
#'       session_token = "string"
#'     ),
#'     profile = "string",
#'     anonymous = "logical"
#'   ),
#'   endpoint = "string",
#'   region = "string"
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- secretsmanager()
#' # The following example shows how to cancel rotation for a secret. The
#' # operation sets the RotationEnabled field to false and cancels all
#' # scheduled rotations. To resume scheduled rotations, you must re-enable
#' # rotation by calling the rotate-secret operation.
#' svc$cancel_rotate_secret(
#'   SecretId = "MyTestDatabaseSecret"
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=secretsmanager_batch_get_secret_value]{batch_get_secret_value} \tab Retrieves the contents of the encrypted fields SecretString or SecretBinary for up to 20 secrets\cr
#'  \link[=secretsmanager_cancel_rotate_secret]{cancel_rotate_secret} \tab Turns off automatic rotation, and if a rotation is currently in progress, cancels the rotation\cr
#'  \link[=secretsmanager_create_secret]{create_secret} \tab Creates a new secret\cr
#'  \link[=secretsmanager_delete_resource_policy]{delete_resource_policy} \tab Deletes the resource-based permission policy attached to the secret\cr
#'  \link[=secretsmanager_delete_secret]{delete_secret} \tab Deletes a secret and all of its versions\cr
#'  \link[=secretsmanager_describe_secret]{describe_secret} \tab Retrieves the details of a secret\cr
#'  \link[=secretsmanager_get_random_password]{get_random_password} \tab Generates a random password\cr
#'  \link[=secretsmanager_get_resource_policy]{get_resource_policy} \tab Retrieves the JSON text of the resource-based policy document attached to the secret\cr
#'  \link[=secretsmanager_get_secret_value]{get_secret_value} \tab Retrieves the contents of the encrypted fields SecretString or SecretBinary from the specified version of a secret, whichever contains content\cr
#'  \link[=secretsmanager_list_secrets]{list_secrets} \tab Lists the secrets that are stored by Secrets Manager in the Amazon Web Services account, not including secrets that are marked for deletion\cr
#'  \link[=secretsmanager_list_secret_version_ids]{list_secret_version_ids} \tab Lists the versions of a secret\cr
#'  \link[=secretsmanager_put_resource_policy]{put_resource_policy} \tab Attaches a resource-based permission policy to a secret\cr
#'  \link[=secretsmanager_put_secret_value]{put_secret_value} \tab Creates a new version with a new encrypted secret value and attaches it to the secret\cr
#'  \link[=secretsmanager_remove_regions_from_replication]{remove_regions_from_replication} \tab For a secret that is replicated to other Regions, deletes the secret replicas from the Regions you specify\cr
#'  \link[=secretsmanager_replicate_secret_to_regions]{replicate_secret_to_regions} \tab Replicates the secret to a new Regions\cr
#'  \link[=secretsmanager_restore_secret]{restore_secret} \tab Cancels the scheduled deletion of a secret by removing the DeletedDate time stamp\cr
#'  \link[=secretsmanager_rotate_secret]{rotate_secret} \tab Configures and starts the asynchronous process of rotating the secret\cr
#'  \link[=secretsmanager_stop_replication_to_replica]{stop_replication_to_replica} \tab Removes the link between the replica secret and the primary secret and promotes the replica to a primary secret in the replica Region\cr
#'  \link[=secretsmanager_tag_resource]{tag_resource} \tab Attaches tags to a secret\cr
#'  \link[=secretsmanager_untag_resource]{untag_resource} \tab Removes specific tags from a secret\cr
#'  \link[=secretsmanager_update_secret]{update_secret} \tab Modifies the details of a secret, including metadata and the secret value\cr
#'  \link[=secretsmanager_update_secret_version_stage]{update_secret_version_stage} \tab Modifies the staging labels attached to a version of a secret\cr
#'  \link[=secretsmanager_validate_resource_policy]{validate_resource_policy} \tab Validates that a resource policy does not grant a wide range of principals access to your secret
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname secretsmanager
#' @export
secretsmanager <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .secretsmanager$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.secretsmanager <- list()

.secretsmanager$operations <- list()

.secretsmanager$metadata <- list(
  service_name = "secretsmanager",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "secretsmanager.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "secretsmanager.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "secretsmanager.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "secretsmanager.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "secretsmanager.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "secretsmanager.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "secretsmanager.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "secretsmanager.{region}.amazonaws.eu", global = FALSE)),
  service_id = "Secrets Manager",
  api_version = "2017-10-17",
  signing_name = "secretsmanager",
  json_version = "1.1",
  target_prefix = "secretsmanager"
)

.secretsmanager$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("jsonrpc", "v4")
  new_service(.secretsmanager$metadata, handlers, config, op)
}
