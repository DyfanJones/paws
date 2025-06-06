# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' Amazon EventBridge Pipes
#'
#' @description
#' Amazon EventBridge Pipes connects event sources to targets. Pipes
#' reduces the need for specialized knowledge and integration code when
#' developing event driven architectures. This helps ensures consistency
#' across your company’s applications. With Pipes, the target can be any
#' available EventBridge target. To set up a pipe, you select the event
#' source, add optional event filtering, define optional enrichment, and
#' select the target for the event data.
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
#' svc <- eventbridgepipes(
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
#' svc <- eventbridgepipes()
#' svc$create_pipe(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=eventbridgepipes_create_pipe]{create_pipe} \tab Create a pipe\cr
#'  \link[=eventbridgepipes_delete_pipe]{delete_pipe} \tab Delete an existing pipe\cr
#'  \link[=eventbridgepipes_describe_pipe]{describe_pipe} \tab Get the information about an existing pipe\cr
#'  \link[=eventbridgepipes_list_pipes]{list_pipes} \tab Get the pipes associated with this account\cr
#'  \link[=eventbridgepipes_list_tags_for_resource]{list_tags_for_resource} \tab Displays the tags associated with a pipe\cr
#'  \link[=eventbridgepipes_start_pipe]{start_pipe} \tab Start an existing pipe\cr
#'  \link[=eventbridgepipes_stop_pipe]{stop_pipe} \tab Stop an existing pipe\cr
#'  \link[=eventbridgepipes_tag_resource]{tag_resource} \tab Assigns one or more tags (key-value pairs) to the specified pipe\cr
#'  \link[=eventbridgepipes_untag_resource]{untag_resource} \tab Removes one or more tags from the specified pipes\cr
#'  \link[=eventbridgepipes_update_pipe]{update_pipe} \tab Update an existing pipe
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname eventbridgepipes
#' @export
eventbridgepipes <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .eventbridgepipes$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.eventbridgepipes <- list()

.eventbridgepipes$operations <- list()

.eventbridgepipes$metadata <- list(
  service_name = "eventbridgepipes",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "pipes.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "pipes.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "pipes.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "pipes.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "pipes.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "pipes.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "pipes.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "pipes.{region}.amazonaws.eu", global = FALSE)),
  service_id = "Pipes",
  api_version = "2015-10-07",
  signing_name = "pipes",
  json_version = "",
  target_prefix = ""
)

.eventbridgepipes$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("restjson", "v4")
  new_service(.eventbridgepipes$metadata, handlers, config, op)
}
