# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' Amazon DevOps Guru
#'
#' @description
#' Amazon DevOps Guru is a fully managed service that helps you identify
#' anomalous behavior in business critical operational applications. You
#' specify the Amazon Web Services resources that you want DevOps Guru to
#' cover, then the Amazon CloudWatch metrics and Amazon Web Services
#' CloudTrail events related to those resources are analyzed. When
#' anomalous behavior is detected, DevOps Guru creates an *insight* that
#' includes recommendations, related events, and related metrics that can
#' help you improve your operational applications. For more information,
#' see [What is Amazon DevOps
#' Guru](https://docs.aws.amazon.com/devops-guru/latest/userguide/welcome.html).
#' 
#' You can specify 1 or 2 Amazon Simple Notification Service topics so you
#' are notified every time a new insight is created. You can also enable
#' DevOps Guru to generate an OpsItem in Amazon Web Services Systems
#' Manager for each insight to help you manage and track your work
#' addressing insights.
#' 
#' To learn about the DevOps Guru workflow, see [How DevOps Guru
#' works](https://docs.aws.amazon.com/devops-guru/latest/userguide/welcome.html#how-it-works).
#' To learn about DevOps Guru concepts, see [Concepts in DevOps
#' Guru](https://docs.aws.amazon.com/devops-guru/latest/userguide/concepts.html).
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
#' svc <- devopsguru(
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
#' svc <- devopsguru()
#' svc$add_notification_channel(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=devopsguru_add_notification_channel]{add_notification_channel} \tab Adds a notification channel to DevOps Guru\cr
#'  \link[=devopsguru_delete_insight]{delete_insight} \tab Deletes the insight along with the associated anomalies, events and recommendations\cr
#'  \link[=devopsguru_describe_account_health]{describe_account_health} \tab Returns the number of open reactive insights, the number of open proactive insights, and the number of metrics analyzed in your Amazon Web Services account\cr
#'  \link[=devopsguru_describe_account_overview]{describe_account_overview} \tab For the time range passed in, returns the number of open reactive insight that were created, the number of open proactive insights that were created, and the Mean Time to Recover (MTTR) for all closed reactive insights\cr
#'  \link[=devopsguru_describe_anomaly]{describe_anomaly} \tab Returns details about an anomaly that you specify using its ID\cr
#'  \link[=devopsguru_describe_event_sources_config]{describe_event_sources_config} \tab Returns the integration status of services that are integrated with DevOps Guru as Consumer via EventBridge\cr
#'  \link[=devopsguru_describe_feedback]{describe_feedback} \tab Returns the most recent feedback submitted in the current Amazon Web Services account and Region\cr
#'  \link[=devopsguru_describe_insight]{describe_insight} \tab Returns details about an insight that you specify using its ID\cr
#'  \link[=devopsguru_describe_organization_health]{describe_organization_health} \tab Returns active insights, predictive insights, and resource hours analyzed in last hour\cr
#'  \link[=devopsguru_describe_organization_overview]{describe_organization_overview} \tab Returns an overview of your organization's history based on the specified time range\cr
#'  \link[=devopsguru_describe_organization_resource_collection_health]{describe_organization_resource_collection_health} \tab Provides an overview of your system's health\cr
#'  \link[=devopsguru_describe_resource_collection_health]{describe_resource_collection_health} \tab Returns the number of open proactive insights, open reactive insights, and the Mean Time to Recover (MTTR) for all closed insights in resource collections in your account\cr
#'  \link[=devopsguru_describe_service_integration]{describe_service_integration} \tab Returns the integration status of services that are integrated with DevOps Guru\cr
#'  \link[=devopsguru_get_cost_estimation]{get_cost_estimation} \tab Returns an estimate of the monthly cost for DevOps Guru to analyze your Amazon Web Services resources\cr
#'  \link[=devopsguru_get_resource_collection]{get_resource_collection} \tab Returns lists Amazon Web Services resources that are of the specified resource collection type\cr
#'  \link[=devopsguru_list_anomalies_for_insight]{list_anomalies_for_insight} \tab Returns a list of the anomalies that belong to an insight that you specify using its ID\cr
#'  \link[=devopsguru_list_anomalous_log_groups]{list_anomalous_log_groups} \tab Returns the list of log groups that contain log anomalies\cr
#'  \link[=devopsguru_list_events]{list_events} \tab Returns a list of the events emitted by the resources that are evaluated by DevOps Guru\cr
#'  \link[=devopsguru_list_insights]{list_insights} \tab Returns a list of insights in your Amazon Web Services account\cr
#'  \link[=devopsguru_list_monitored_resources]{list_monitored_resources} \tab Returns the list of all log groups that are being monitored and tagged by DevOps Guru\cr
#'  \link[=devopsguru_list_notification_channels]{list_notification_channels} \tab Returns a list of notification channels configured for DevOps Guru\cr
#'  \link[=devopsguru_list_organization_insights]{list_organization_insights} \tab Returns a list of insights associated with the account or OU Id\cr
#'  \link[=devopsguru_list_recommendations]{list_recommendations} \tab Returns a list of a specified insight's recommendations\cr
#'  \link[=devopsguru_put_feedback]{put_feedback} \tab Collects customer feedback about the specified insight\cr
#'  \link[=devopsguru_remove_notification_channel]{remove_notification_channel} \tab Removes a notification channel from DevOps Guru\cr
#'  \link[=devopsguru_search_insights]{search_insights} \tab Returns a list of insights in your Amazon Web Services account\cr
#'  \link[=devopsguru_search_organization_insights]{search_organization_insights} \tab Returns a list of insights in your organization\cr
#'  \link[=devopsguru_start_cost_estimation]{start_cost_estimation} \tab Starts the creation of an estimate of the monthly cost to analyze your Amazon Web Services resources\cr
#'  \link[=devopsguru_update_event_sources_config]{update_event_sources_config} \tab Enables or disables integration with a service that can be integrated with DevOps Guru\cr
#'  \link[=devopsguru_update_resource_collection]{update_resource_collection} \tab Updates the collection of resources that DevOps Guru analyzes\cr
#'  \link[=devopsguru_update_service_integration]{update_service_integration} \tab Enables or disables integration with a service that can be integrated with DevOps Guru
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname devopsguru
#' @export
devopsguru <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .devopsguru$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.devopsguru <- list()

.devopsguru$operations <- list()

.devopsguru$metadata <- list(
  service_name = "devopsguru",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "devops-guru.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "devops-guru.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "devops-guru.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "devops-guru.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "devops-guru.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "devops-guru.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "devops-guru.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "devops-guru.{region}.amazonaws.eu", global = FALSE)),
  service_id = "DevOps Guru",
  api_version = "2020-12-01",
  signing_name = "devops-guru",
  json_version = "1.1",
  target_prefix = ""
)

.devopsguru$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("restjson", "v4")
  new_service(.devopsguru$metadata, handlers, config, op)
}
