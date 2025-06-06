# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' Amazon Lookout for Metrics
#'
#' @description
#' This is the *Amazon Lookout for Metrics API Reference*. For an
#' introduction to the service with tutorials for getting started, visit
#' [Amazon Lookout for Metrics Developer
#' Guide](https://docs.aws.amazon.com/lookoutmetrics/latest/dev/).
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
#' svc <- lookoutmetrics(
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
#' svc <- lookoutmetrics()
#' svc$activate_anomaly_detector(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=lookoutmetrics_activate_anomaly_detector]{activate_anomaly_detector} \tab Activates an anomaly detector\cr
#'  \link[=lookoutmetrics_back_test_anomaly_detector]{back_test_anomaly_detector} \tab Runs a backtest for anomaly detection for the specified resource\cr
#'  \link[=lookoutmetrics_create_alert]{create_alert} \tab Creates an alert for an anomaly detector\cr
#'  \link[=lookoutmetrics_create_anomaly_detector]{create_anomaly_detector} \tab Creates an anomaly detector\cr
#'  \link[=lookoutmetrics_create_metric_set]{create_metric_set} \tab Creates a dataset\cr
#'  \link[=lookoutmetrics_deactivate_anomaly_detector]{deactivate_anomaly_detector} \tab Deactivates an anomaly detector\cr
#'  \link[=lookoutmetrics_delete_alert]{delete_alert} \tab Deletes an alert\cr
#'  \link[=lookoutmetrics_delete_anomaly_detector]{delete_anomaly_detector} \tab Deletes a detector\cr
#'  \link[=lookoutmetrics_describe_alert]{describe_alert} \tab Describes an alert\cr
#'  \link[=lookoutmetrics_describe_anomaly_detection_executions]{describe_anomaly_detection_executions} \tab Returns information about the status of the specified anomaly detection jobs\cr
#'  \link[=lookoutmetrics_describe_anomaly_detector]{describe_anomaly_detector} \tab Describes a detector\cr
#'  \link[=lookoutmetrics_describe_metric_set]{describe_metric_set} \tab Describes a dataset\cr
#'  \link[=lookoutmetrics_detect_metric_set_config]{detect_metric_set_config} \tab Detects an Amazon S3 dataset's file format, interval, and offset\cr
#'  \link[=lookoutmetrics_get_anomaly_group]{get_anomaly_group} \tab Returns details about a group of anomalous metrics\cr
#'  \link[=lookoutmetrics_get_data_quality_metrics]{get_data_quality_metrics} \tab Returns details about the requested data quality metrics\cr
#'  \link[=lookoutmetrics_get_feedback]{get_feedback} \tab Get feedback for an anomaly group\cr
#'  \link[=lookoutmetrics_get_sample_data]{get_sample_data} \tab Returns a selection of sample records from an Amazon S3 datasource\cr
#'  \link[=lookoutmetrics_list_alerts]{list_alerts} \tab Lists the alerts attached to a detector\cr
#'  \link[=lookoutmetrics_list_anomaly_detectors]{list_anomaly_detectors} \tab Lists the detectors in the current AWS Region\cr
#'  \link[=lookoutmetrics_list_anomaly_group_related_metrics]{list_anomaly_group_related_metrics} \tab Returns a list of measures that are potential causes or effects of an anomaly group\cr
#'  \link[=lookoutmetrics_list_anomaly_group_summaries]{list_anomaly_group_summaries} \tab Returns a list of anomaly groups\cr
#'  \link[=lookoutmetrics_list_anomaly_group_time_series]{list_anomaly_group_time_series} \tab Gets a list of anomalous metrics for a measure in an anomaly group\cr
#'  \link[=lookoutmetrics_list_metric_sets]{list_metric_sets} \tab Lists the datasets in the current AWS Region\cr
#'  \link[=lookoutmetrics_list_tags_for_resource]{list_tags_for_resource} \tab Gets a list of tags for a detector, dataset, or alert\cr
#'  \link[=lookoutmetrics_put_feedback]{put_feedback} \tab Add feedback for an anomalous metric\cr
#'  \link[=lookoutmetrics_tag_resource]{tag_resource} \tab Adds tags to a detector, dataset, or alert\cr
#'  \link[=lookoutmetrics_untag_resource]{untag_resource} \tab Removes tags from a detector, dataset, or alert\cr
#'  \link[=lookoutmetrics_update_alert]{update_alert} \tab Make changes to an existing alert\cr
#'  \link[=lookoutmetrics_update_anomaly_detector]{update_anomaly_detector} \tab Updates a detector\cr
#'  \link[=lookoutmetrics_update_metric_set]{update_metric_set} \tab Updates a dataset
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname lookoutmetrics
#' @export
lookoutmetrics <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .lookoutmetrics$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.lookoutmetrics <- list()

.lookoutmetrics$operations <- list()

.lookoutmetrics$metadata <- list(
  service_name = "lookoutmetrics",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "lookoutmetrics.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "lookoutmetrics.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "lookoutmetrics.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "lookoutmetrics.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "lookoutmetrics.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "lookoutmetrics.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "lookoutmetrics.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "lookoutmetrics.{region}.amazonaws.eu", global = FALSE)),
  service_id = "LookoutMetrics",
  api_version = "2017-07-25",
  signing_name = "lookoutmetrics",
  json_version = "1.1",
  target_prefix = ""
)

.lookoutmetrics$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("restjson", "v4")
  new_service(.lookoutmetrics$metadata, handlers, config, op)
}
