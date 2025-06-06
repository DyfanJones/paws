# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' Amazon CloudWatch
#'
#' @description
#' Amazon CloudWatch monitors your Amazon Web Services (Amazon Web
#' Services) resources and the applications you run on Amazon Web Services
#' in real time. You can use CloudWatch to collect and track metrics, which
#' are the variables you want to measure for your resources and
#' applications.
#' 
#' CloudWatch alarms send notifications or automatically change the
#' resources you are monitoring based on rules that you define. For
#' example, you can monitor the CPU usage and disk reads and writes of your
#' Amazon EC2 instances. Then, use this data to determine whether you
#' should launch additional instances to handle increased load. You can
#' also use this data to stop under-used instances to save money.
#' 
#' In addition to monitoring the built-in metrics that come with Amazon Web
#' Services, you can monitor your own custom metrics. With CloudWatch, you
#' gain system-wide visibility into resource utilization, application
#' performance, and operational health.
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
#' svc <- cloudwatch(
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
#' svc <- cloudwatch()
#' svc$delete_alarms(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=cloudwatch_delete_alarms]{delete_alarms} \tab Deletes the specified alarms\cr
#'  \link[=cloudwatch_delete_anomaly_detector]{delete_anomaly_detector} \tab Deletes the specified anomaly detection model from your account\cr
#'  \link[=cloudwatch_delete_dashboards]{delete_dashboards} \tab Deletes all dashboards that you specify\cr
#'  \link[=cloudwatch_delete_insight_rules]{delete_insight_rules} \tab Permanently deletes the specified Contributor Insights rules\cr
#'  \link[=cloudwatch_delete_metric_stream]{delete_metric_stream} \tab Permanently deletes the metric stream that you specify\cr
#'  \link[=cloudwatch_describe_alarm_history]{describe_alarm_history} \tab Retrieves the history for the specified alarm\cr
#'  \link[=cloudwatch_describe_alarms]{describe_alarms} \tab Retrieves the specified alarms\cr
#'  \link[=cloudwatch_describe_alarms_for_metric]{describe_alarms_for_metric} \tab Retrieves the alarms for the specified metric\cr
#'  \link[=cloudwatch_describe_anomaly_detectors]{describe_anomaly_detectors} \tab Lists the anomaly detection models that you have created in your account\cr
#'  \link[=cloudwatch_describe_insight_rules]{describe_insight_rules} \tab Returns a list of all the Contributor Insights rules in your account\cr
#'  \link[=cloudwatch_disable_alarm_actions]{disable_alarm_actions} \tab Disables the actions for the specified alarms\cr
#'  \link[=cloudwatch_disable_insight_rules]{disable_insight_rules} \tab Disables the specified Contributor Insights rules\cr
#'  \link[=cloudwatch_enable_alarm_actions]{enable_alarm_actions} \tab Enables the actions for the specified alarms\cr
#'  \link[=cloudwatch_enable_insight_rules]{enable_insight_rules} \tab Enables the specified Contributor Insights rules\cr
#'  \link[=cloudwatch_get_dashboard]{get_dashboard} \tab Displays the details of the dashboard that you specify\cr
#'  \link[=cloudwatch_get_insight_rule_report]{get_insight_rule_report} \tab This operation returns the time series data collected by a Contributor Insights rule\cr
#'  \link[=cloudwatch_get_metric_data]{get_metric_data} \tab You can use the GetMetricData API to retrieve CloudWatch metric values\cr
#'  \link[=cloudwatch_get_metric_statistics]{get_metric_statistics} \tab Gets statistics for the specified metric\cr
#'  \link[=cloudwatch_get_metric_stream]{get_metric_stream} \tab Returns information about the metric stream that you specify\cr
#'  \link[=cloudwatch_get_metric_widget_image]{get_metric_widget_image} \tab You can use the GetMetricWidgetImage API to retrieve a snapshot graph of one or more Amazon CloudWatch metrics as a bitmap image\cr
#'  \link[=cloudwatch_list_dashboards]{list_dashboards} \tab Returns a list of the dashboards for your account\cr
#'  \link[=cloudwatch_list_managed_insight_rules]{list_managed_insight_rules} \tab Returns a list that contains the number of managed Contributor Insights rules in your account\cr
#'  \link[=cloudwatch_list_metrics]{list_metrics} \tab List the specified metrics\cr
#'  \link[=cloudwatch_list_metric_streams]{list_metric_streams} \tab Returns a list of metric streams in this account\cr
#'  \link[=cloudwatch_list_tags_for_resource]{list_tags_for_resource} \tab Displays the tags associated with a CloudWatch resource\cr
#'  \link[=cloudwatch_put_anomaly_detector]{put_anomaly_detector} \tab Creates an anomaly detection model for a CloudWatch metric\cr
#'  \link[=cloudwatch_put_composite_alarm]{put_composite_alarm} \tab Creates or updates a composite alarm\cr
#'  \link[=cloudwatch_put_dashboard]{put_dashboard} \tab Creates a dashboard if it does not already exist, or updates an existing dashboard\cr
#'  \link[=cloudwatch_put_insight_rule]{put_insight_rule} \tab Creates a Contributor Insights rule\cr
#'  \link[=cloudwatch_put_managed_insight_rules]{put_managed_insight_rules} \tab Creates a managed Contributor Insights rule for a specified Amazon Web Services resource\cr
#'  \link[=cloudwatch_put_metric_alarm]{put_metric_alarm} \tab Creates or updates an alarm and associates it with the specified metric, metric math expression, anomaly detection model, or Metrics Insights query\cr
#'  \link[=cloudwatch_put_metric_data]{put_metric_data} \tab Publishes metric data to Amazon CloudWatch\cr
#'  \link[=cloudwatch_put_metric_stream]{put_metric_stream} \tab Creates or updates a metric stream\cr
#'  \link[=cloudwatch_set_alarm_state]{set_alarm_state} \tab Temporarily sets the state of an alarm for testing purposes\cr
#'  \link[=cloudwatch_start_metric_streams]{start_metric_streams} \tab Starts the streaming of metrics for one or more of your metric streams\cr
#'  \link[=cloudwatch_stop_metric_streams]{stop_metric_streams} \tab Stops the streaming of metrics for one or more of your metric streams\cr
#'  \link[=cloudwatch_tag_resource]{tag_resource} \tab Assigns one or more tags (key-value pairs) to the specified CloudWatch resource\cr
#'  \link[=cloudwatch_untag_resource]{untag_resource} \tab Removes one or more tags from the specified resource
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname cloudwatch
#' @export
cloudwatch <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .cloudwatch$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.cloudwatch <- list()

.cloudwatch$operations <- list()

.cloudwatch$metadata <- list(
  service_name = "monitoring",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "monitoring.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "monitoring.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "monitoring.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "monitoring.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "monitoring.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "monitoring.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "monitoring.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "monitoring.{region}.amazonaws.eu", global = FALSE)),
  service_id = "CloudWatch",
  api_version = "2010-08-01",
  signing_name = "monitoring",
  json_version = "",
  target_prefix = ""
)

.cloudwatch$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("query", "v4")
  new_service(.cloudwatch$metadata, handlers, config, op)
}
