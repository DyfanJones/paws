# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' Amazon DocumentDB Elastic Clusters
#'
#' @description
#' Amazon DocumentDB elastic clusters
#' 
#' Amazon DocumentDB elastic-clusters support workloads with millions of
#' reads/writes per second and petabytes of storage capacity. Amazon
#' DocumentDB elastic clusters also simplify how developers interact with
#' Amazon DocumentDB elastic-clusters by eliminating the need to choose,
#' manage or upgrade instances.
#' 
#' Amazon DocumentDB elastic-clusters were created to:
#' 
#' -   provide a solution for customers looking for a database that
#'     provides virtually limitless scale with rich query capabilities and
#'     MongoDB API compatibility.
#' 
#' -   give customers higher connection limits, and to reduce downtime from
#'     patching.
#' 
#' -   continue investing in a cloud-native, elastic, and class leading
#'     architecture for JSON workloads.
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
#' svc <- docdbelastic(
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
#' svc <- docdbelastic()
#' svc$apply_pending_maintenance_action(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=docdbelastic_apply_pending_maintenance_action]{apply_pending_maintenance_action} \tab The type of pending maintenance action to be applied to the resource\cr
#'  \link[=docdbelastic_copy_cluster_snapshot]{copy_cluster_snapshot} \tab Copies a snapshot of an elastic cluster\cr
#'  \link[=docdbelastic_create_cluster]{create_cluster} \tab Creates a new Amazon DocumentDB elastic cluster and returns its cluster structure\cr
#'  \link[=docdbelastic_create_cluster_snapshot]{create_cluster_snapshot} \tab Creates a snapshot of an elastic cluster\cr
#'  \link[=docdbelastic_delete_cluster]{delete_cluster} \tab Delete an elastic cluster\cr
#'  \link[=docdbelastic_delete_cluster_snapshot]{delete_cluster_snapshot} \tab Delete an elastic cluster snapshot\cr
#'  \link[=docdbelastic_get_cluster]{get_cluster} \tab Returns information about a specific elastic cluster\cr
#'  \link[=docdbelastic_get_cluster_snapshot]{get_cluster_snapshot} \tab Returns information about a specific elastic cluster snapshot\cr
#'  \link[=docdbelastic_get_pending_maintenance_action]{get_pending_maintenance_action} \tab Retrieves all maintenance actions that are pending\cr
#'  \link[=docdbelastic_list_clusters]{list_clusters} \tab Returns information about provisioned Amazon DocumentDB elastic clusters\cr
#'  \link[=docdbelastic_list_cluster_snapshots]{list_cluster_snapshots} \tab Returns information about snapshots for a specified elastic cluster\cr
#'  \link[=docdbelastic_list_pending_maintenance_actions]{list_pending_maintenance_actions} \tab Retrieves a list of all maintenance actions that are pending\cr
#'  \link[=docdbelastic_list_tags_for_resource]{list_tags_for_resource} \tab Lists all tags on a elastic cluster resource\cr
#'  \link[=docdbelastic_restore_cluster_from_snapshot]{restore_cluster_from_snapshot} \tab Restores an elastic cluster from a snapshot\cr
#'  \link[=docdbelastic_start_cluster]{start_cluster} \tab Restarts the stopped elastic cluster that is specified by clusterARN\cr
#'  \link[=docdbelastic_stop_cluster]{stop_cluster} \tab Stops the running elastic cluster that is specified by clusterArn\cr
#'  \link[=docdbelastic_tag_resource]{tag_resource} \tab Adds metadata tags to an elastic cluster resource\cr
#'  \link[=docdbelastic_untag_resource]{untag_resource} \tab Removes metadata tags from an elastic cluster resource\cr
#'  \link[=docdbelastic_update_cluster]{update_cluster} \tab Modifies an elastic cluster
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname docdbelastic
#' @export
docdbelastic <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .docdbelastic$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.docdbelastic <- list()

.docdbelastic$operations <- list()

.docdbelastic$metadata <- list(
  service_name = "docdbelastic",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "docdb-elastic.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "docdb-elastic.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "docdb-elastic.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "docdb-elastic.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "docdb-elastic.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "docdb-elastic.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "docdb-elastic.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "docdb-elastic.{region}.amazonaws.eu", global = FALSE)),
  service_id = "DocDB Elastic",
  api_version = "2022-11-28",
  signing_name = "docdb-elastic",
  json_version = "1.1",
  target_prefix = ""
)

.docdbelastic$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("restjson", "v4")
  new_service(.docdbelastic$metadata, handlers, config, op)
}
