# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' Amazon Textract
#'
#' @description
#' Amazon Textract detects and analyzes text in documents and converts it
#' into machine-readable text. This is the API reference documentation for
#' Amazon Textract.
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
#' svc <- textract(
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
#' svc <- textract()
#' svc$analyze_document(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=textract_analyze_document]{analyze_document} \tab Analyzes an input document for relationships between detected items\cr
#'  \link[=textract_analyze_expense]{analyze_expense} \tab AnalyzeExpense synchronously analyzes an input document for financially related relationships between text\cr
#'  \link[=textract_analyze_id]{analyze_id} \tab Analyzes identity documents for relevant information\cr
#'  \link[=textract_create_adapter]{create_adapter} \tab Creates an adapter, which can be fine-tuned for enhanced performance on user provided documents\cr
#'  \link[=textract_create_adapter_version]{create_adapter_version} \tab Creates a new version of an adapter\cr
#'  \link[=textract_delete_adapter]{delete_adapter} \tab Deletes an Amazon Textract adapter\cr
#'  \link[=textract_delete_adapter_version]{delete_adapter_version} \tab Deletes an Amazon Textract adapter version\cr
#'  \link[=textract_detect_document_text]{detect_document_text} \tab Detects text in the input document\cr
#'  \link[=textract_get_adapter]{get_adapter} \tab Gets configuration information for an adapter specified by an AdapterId, returning information on AdapterName, Description, CreationTime, AutoUpdate status, and FeatureTypes\cr
#'  \link[=textract_get_adapter_version]{get_adapter_version} \tab Gets configuration information for the specified adapter version, including: AdapterId, AdapterVersion, FeatureTypes, Status, StatusMessage, DatasetConfig, KMSKeyId, OutputConfig, Tags and EvaluationMetrics\cr
#'  \link[=textract_get_document_analysis]{get_document_analysis} \tab Gets the results for an Amazon Textract asynchronous operation that analyzes text in a document\cr
#'  \link[=textract_get_document_text_detection]{get_document_text_detection} \tab Gets the results for an Amazon Textract asynchronous operation that detects text in a document\cr
#'  \link[=textract_get_expense_analysis]{get_expense_analysis} \tab Gets the results for an Amazon Textract asynchronous operation that analyzes invoices and receipts\cr
#'  \link[=textract_get_lending_analysis]{get_lending_analysis} \tab Gets the results for an Amazon Textract asynchronous operation that analyzes text in a lending document\cr
#'  \link[=textract_get_lending_analysis_summary]{get_lending_analysis_summary} \tab Gets summarized results for the StartLendingAnalysis operation, which analyzes text in a lending document\cr
#'  \link[=textract_list_adapters]{list_adapters} \tab Lists all adapters that match the specified filtration criteria\cr
#'  \link[=textract_list_adapter_versions]{list_adapter_versions} \tab List all version of an adapter that meet the specified filtration criteria\cr
#'  \link[=textract_list_tags_for_resource]{list_tags_for_resource} \tab Lists all tags for an Amazon Textract resource\cr
#'  \link[=textract_start_document_analysis]{start_document_analysis} \tab Starts the asynchronous analysis of an input document for relationships between detected items such as key-value pairs, tables, and selection elements\cr
#'  \link[=textract_start_document_text_detection]{start_document_text_detection} \tab Starts the asynchronous detection of text in a document\cr
#'  \link[=textract_start_expense_analysis]{start_expense_analysis} \tab Starts the asynchronous analysis of invoices or receipts for data like contact information, items purchased, and vendor names\cr
#'  \link[=textract_start_lending_analysis]{start_lending_analysis} \tab Starts the classification and analysis of an input document\cr
#'  \link[=textract_tag_resource]{tag_resource} \tab Adds one or more tags to the specified resource\cr
#'  \link[=textract_untag_resource]{untag_resource} \tab Removes any tags with the specified keys from the specified resource\cr
#'  \link[=textract_update_adapter]{update_adapter} \tab Update the configuration for an adapter
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname textract
#' @export
textract <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .textract$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.textract <- list()

.textract$operations <- list()

.textract$metadata <- list(
  service_name = "textract",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "textract.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "textract.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "textract.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "textract.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "textract.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "textract.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "textract.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "textract.{region}.amazonaws.eu", global = FALSE)),
  service_id = "Textract",
  api_version = "2018-06-27",
  signing_name = "textract",
  json_version = "1.1",
  target_prefix = "Textract"
)

.textract$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("jsonrpc", "v4")
  new_service(.textract$metadata, handlers, config, op)
}
