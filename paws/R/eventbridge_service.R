# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' Amazon EventBridge
#'
#' @description
#' Amazon EventBridge helps you to respond to state changes in your Amazon
#' Web Services resources. When your resources change state, they
#' automatically send events to an event stream. You can create rules that
#' match selected events in the stream and route them to targets to take
#' action. You can also use rules to take action on a predetermined
#' schedule. For example, you can configure rules to:
#' 
#' -   Automatically invoke an Lambda function to update DNS entries when
#'     an event notifies you that Amazon EC2 instance enters the running
#'     state.
#' 
#' -   Direct specific API records from CloudTrail to an Amazon Kinesis
#'     data stream for detailed analysis of potential security or
#'     availability risks.
#' 
#' -   Periodically invoke a built-in target to create a snapshot of an
#'     Amazon EBS volume.
#' 
#' For more information about the features of Amazon EventBridge, see the
#' [Amazon EventBridge User
#' Guide](https://docs.aws.amazon.com/eventbridge/latest/userguide/).
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
#' svc <- eventbridge(
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
#' svc <- eventbridge()
#' svc$activate_event_source(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=eventbridge_activate_event_source]{activate_event_source} \tab Activates a partner event source that has been deactivated\cr
#'  \link[=eventbridge_cancel_replay]{cancel_replay} \tab Cancels the specified replay\cr
#'  \link[=eventbridge_create_api_destination]{create_api_destination} \tab Creates an API destination, which is an HTTP invocation endpoint configured as a target for events\cr
#'  \link[=eventbridge_create_archive]{create_archive} \tab Creates an archive of events with the specified settings\cr
#'  \link[=eventbridge_create_connection]{create_connection} \tab Creates a connection\cr
#'  \link[=eventbridge_create_endpoint]{create_endpoint} \tab Creates a global endpoint\cr
#'  \link[=eventbridge_create_event_bus]{create_event_bus} \tab Creates a new event bus within your account\cr
#'  \link[=eventbridge_create_partner_event_source]{create_partner_event_source} \tab Called by an SaaS partner to create a partner event source\cr
#'  \link[=eventbridge_deactivate_event_source]{deactivate_event_source} \tab You can use this operation to temporarily stop receiving events from the specified partner event source\cr
#'  \link[=eventbridge_deauthorize_connection]{deauthorize_connection} \tab Removes all authorization parameters from the connection\cr
#'  \link[=eventbridge_delete_api_destination]{delete_api_destination} \tab Deletes the specified API destination\cr
#'  \link[=eventbridge_delete_archive]{delete_archive} \tab Deletes the specified archive\cr
#'  \link[=eventbridge_delete_connection]{delete_connection} \tab Deletes a connection\cr
#'  \link[=eventbridge_delete_endpoint]{delete_endpoint} \tab Delete an existing global endpoint\cr
#'  \link[=eventbridge_delete_event_bus]{delete_event_bus} \tab Deletes the specified custom event bus or partner event bus\cr
#'  \link[=eventbridge_delete_partner_event_source]{delete_partner_event_source} \tab This operation is used by SaaS partners to delete a partner event source\cr
#'  \link[=eventbridge_delete_rule]{delete_rule} \tab Deletes the specified rule\cr
#'  \link[=eventbridge_describe_api_destination]{describe_api_destination} \tab Retrieves details about an API destination\cr
#'  \link[=eventbridge_describe_archive]{describe_archive} \tab Retrieves details about an archive\cr
#'  \link[=eventbridge_describe_connection]{describe_connection} \tab Retrieves details about a connection\cr
#'  \link[=eventbridge_describe_endpoint]{describe_endpoint} \tab Get the information about an existing global endpoint\cr
#'  \link[=eventbridge_describe_event_bus]{describe_event_bus} \tab Displays details about an event bus in your account\cr
#'  \link[=eventbridge_describe_event_source]{describe_event_source} \tab This operation lists details about a partner event source that is shared with your account\cr
#'  \link[=eventbridge_describe_partner_event_source]{describe_partner_event_source} \tab An SaaS partner can use this operation to list details about a partner event source that they have created\cr
#'  \link[=eventbridge_describe_replay]{describe_replay} \tab Retrieves details about a replay\cr
#'  \link[=eventbridge_describe_rule]{describe_rule} \tab Describes the specified rule\cr
#'  \link[=eventbridge_disable_rule]{disable_rule} \tab Disables the specified rule\cr
#'  \link[=eventbridge_enable_rule]{enable_rule} \tab Enables the specified rule\cr
#'  \link[=eventbridge_list_api_destinations]{list_api_destinations} \tab Retrieves a list of API destination in the account in the current Region\cr
#'  \link[=eventbridge_list_archives]{list_archives} \tab Lists your archives\cr
#'  \link[=eventbridge_list_connections]{list_connections} \tab Retrieves a list of connections from the account\cr
#'  \link[=eventbridge_list_endpoints]{list_endpoints} \tab List the global endpoints associated with this account\cr
#'  \link[=eventbridge_list_event_buses]{list_event_buses} \tab Lists all the event buses in your account, including the default event bus, custom event buses, and partner event buses\cr
#'  \link[=eventbridge_list_event_sources]{list_event_sources} \tab You can use this to see all the partner event sources that have been shared with your Amazon Web Services account\cr
#'  \link[=eventbridge_list_partner_event_source_accounts]{list_partner_event_source_accounts} \tab An SaaS partner can use this operation to display the Amazon Web Services account ID that a particular partner event source name is associated with\cr
#'  \link[=eventbridge_list_partner_event_sources]{list_partner_event_sources} \tab An SaaS partner can use this operation to list all the partner event source names that they have created\cr
#'  \link[=eventbridge_list_replays]{list_replays} \tab Lists your replays\cr
#'  \link[=eventbridge_list_rule_names_by_target]{list_rule_names_by_target} \tab Lists the rules for the specified target\cr
#'  \link[=eventbridge_list_rules]{list_rules} \tab Lists your Amazon EventBridge rules\cr
#'  \link[=eventbridge_list_tags_for_resource]{list_tags_for_resource} \tab Displays the tags associated with an EventBridge resource\cr
#'  \link[=eventbridge_list_targets_by_rule]{list_targets_by_rule} \tab Lists the targets assigned to the specified rule\cr
#'  \link[=eventbridge_put_events]{put_events} \tab Sends custom events to Amazon EventBridge so that they can be matched to rules\cr
#'  \link[=eventbridge_put_partner_events]{put_partner_events} \tab This is used by SaaS partners to write events to a customer's partner event bus\cr
#'  \link[=eventbridge_put_permission]{put_permission} \tab Running PutPermission permits the specified Amazon Web Services account or Amazon Web Services organization to put events to the specified event bus\cr
#'  \link[=eventbridge_put_rule]{put_rule} \tab Creates or updates the specified rule\cr
#'  \link[=eventbridge_put_targets]{put_targets} \tab Adds the specified targets to the specified rule, or updates the targets if they are already associated with the rule\cr
#'  \link[=eventbridge_remove_permission]{remove_permission} \tab Revokes the permission of another Amazon Web Services account to be able to put events to the specified event bus\cr
#'  \link[=eventbridge_remove_targets]{remove_targets} \tab Removes the specified targets from the specified rule\cr
#'  \link[=eventbridge_start_replay]{start_replay} \tab Starts the specified replay\cr
#'  \link[=eventbridge_tag_resource]{tag_resource} \tab Assigns one or more tags (key-value pairs) to the specified EventBridge resource\cr
#'  \link[=eventbridge_test_event_pattern]{test_event_pattern} \tab Tests whether the specified event pattern matches the provided event\cr
#'  \link[=eventbridge_untag_resource]{untag_resource} \tab Removes one or more tags from the specified EventBridge resource\cr
#'  \link[=eventbridge_update_api_destination]{update_api_destination} \tab Updates an API destination\cr
#'  \link[=eventbridge_update_archive]{update_archive} \tab Updates the specified archive\cr
#'  \link[=eventbridge_update_connection]{update_connection} \tab Updates settings for a connection\cr
#'  \link[=eventbridge_update_endpoint]{update_endpoint} \tab Update an existing endpoint\cr
#'  \link[=eventbridge_update_event_bus]{update_event_bus} \tab Updates the specified event bus
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname eventbridge
#' @export
eventbridge <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .eventbridge$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.eventbridge <- list()

.eventbridge$operations <- list()

.eventbridge$metadata <- list(
  service_name = "eventbridge",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "events.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "events.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "events.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "events.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "events.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "events.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "events.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "events.{region}.amazonaws.eu", global = FALSE)),
  service_id = "EventBridge",
  api_version = "2015-10-07",
  signing_name = "events",
  json_version = "1.1",
  target_prefix = "AWSEvents"
)

.eventbridge$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("jsonrpc", "v4")
  new_service(.eventbridge$metadata, handlers, config, op)
}
