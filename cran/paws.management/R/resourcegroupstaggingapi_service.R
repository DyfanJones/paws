# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' AWS Resource Groups Tagging API
#'
#' @description
#' Resource Groups Tagging API
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
#' svc <- resourcegroupstaggingapi(
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
#' svc <- resourcegroupstaggingapi()
#' svc$describe_report_creation(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=resourcegroupstaggingapi_describe_report_creation]{describe_report_creation} \tab Describes the status of the StartReportCreation operation\cr
#'  \link[=resourcegroupstaggingapi_get_compliance_summary]{get_compliance_summary} \tab Returns a table that shows counts of resources that are noncompliant with their tag policies\cr
#'  \link[=resourcegroupstaggingapi_get_resources]{get_resources} \tab Returns all the tagged or previously tagged resources that are located in the specified Amazon Web Services Region for the account\cr
#'  \link[=resourcegroupstaggingapi_get_tag_keys]{get_tag_keys} \tab Returns all tag keys currently in use in the specified Amazon Web Services Region for the calling account\cr
#'  \link[=resourcegroupstaggingapi_get_tag_values]{get_tag_values} \tab Returns all tag values for the specified key that are used in the specified Amazon Web Services Region for the calling account\cr
#'  \link[=resourcegroupstaggingapi_start_report_creation]{start_report_creation} \tab Generates a report that lists all tagged resources in the accounts across your organization and tells whether each resource is compliant with the effective tag policy\cr
#'  \link[=resourcegroupstaggingapi_tag_resources]{tag_resources} \tab Applies one or more tags to the specified resources\cr
#'  \link[=resourcegroupstaggingapi_untag_resources]{untag_resources} \tab Removes the specified tags from the specified resources
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname resourcegroupstaggingapi
#' @export
resourcegroupstaggingapi <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .resourcegroupstaggingapi$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.resourcegroupstaggingapi <- list()

.resourcegroupstaggingapi$operations <- list()

.resourcegroupstaggingapi$metadata <- list(
  service_name = "tagging",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "tagging.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "tagging.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "tagging.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "tagging.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "tagging.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "tagging.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "tagging.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "tagging.{region}.amazonaws.eu", global = FALSE)),
  service_id = "Resource Groups Tagging API",
  api_version = "2017-01-26",
  signing_name = "tagging",
  json_version = "1.1",
  target_prefix = "ResourceGroupsTaggingAPI_20170126"
)

.resourcegroupstaggingapi$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("jsonrpc", "v4")
  new_service(.resourcegroupstaggingapi$metadata, handlers, config, op)
}
