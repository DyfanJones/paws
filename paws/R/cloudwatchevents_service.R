# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config
NULL

#' Amazon CloudWatch Events
#'
#' @description
#' Amazon EventBridge helps you to respond to state changes in your AWS
#' resources. When your resources change state, they automatically send
#' events into an event stream. You can create rules that match selected
#' events in the stream and route them to targets to take action. You can
#' also use rules to take action on a predetermined schedule. For example,
#' you can configure rules to:
#' 
#' -   Automatically invoke an AWS Lambda function to update DNS entries
#'     when an event notifies you that Amazon EC2 instance enters the
#'     running state.
#' 
#' -   Direct specific API records from AWS CloudTrail to an Amazon Kinesis
#'     data stream for detailed analysis of potential security or
#'     availability risks.
#' 
#' -   Periodically invoke a built-in target to create a snapshot of an
#'     Amazon EBS volume.
#' 
#' For more information about the features of Amazon EventBridge, see the
#' [Amazon EventBridge User
#' Guide](https://docs.aws.amazon.com/eventbridge/latest/userguide).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#'
#' @section Service syntax:
#' ```
#' svc <- cloudwatchevents(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string"
#'     ),
#'     endpoint = "string",
#'     region = "string"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- cloudwatchevents()
#' svc$activate_event_source(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=cloudwatchevents_activate_event_source]{activate_event_source} \tab Activates a partner event source that has been deactivated \cr
#'  \link[=cloudwatchevents_create_event_bus]{create_event_bus} \tab Creates a new event bus within your account \cr
#'  \link[=cloudwatchevents_create_partner_event_source]{create_partner_event_source} \tab Called by an SaaS partner to create a partner event source \cr
#'  \link[=cloudwatchevents_deactivate_event_source]{deactivate_event_source} \tab You can use this operation to temporarily stop receiving events from the specified partner event source \cr
#'  \link[=cloudwatchevents_delete_event_bus]{delete_event_bus} \tab Deletes the specified custom event bus or partner event bus \cr
#'  \link[=cloudwatchevents_delete_partner_event_source]{delete_partner_event_source} \tab This operation is used by SaaS partners to delete a partner event source \cr
#'  \link[=cloudwatchevents_delete_rule]{delete_rule} \tab Deletes the specified rule \cr
#'  \link[=cloudwatchevents_describe_event_bus]{describe_event_bus} \tab Displays details about an event bus in your account \cr
#'  \link[=cloudwatchevents_describe_event_source]{describe_event_source} \tab This operation lists details about a partner event source that is shared with your account \cr
#'  \link[=cloudwatchevents_describe_partner_event_source]{describe_partner_event_source} \tab An SaaS partner can use this operation to list details about a partner event source that they have created \cr
#'  \link[=cloudwatchevents_describe_rule]{describe_rule} \tab Describes the specified rule \cr
#'  \link[=cloudwatchevents_disable_rule]{disable_rule} \tab Disables the specified rule \cr
#'  \link[=cloudwatchevents_enable_rule]{enable_rule} \tab Enables the specified rule \cr
#'  \link[=cloudwatchevents_list_event_buses]{list_event_buses} \tab Lists all the event buses in your account, including the default event bus, custom event buses, and partner event buses \cr
#'  \link[=cloudwatchevents_list_event_sources]{list_event_sources} \tab You can use this to see all the partner event sources that have been shared with your AWS account \cr
#'  \link[=cloudwatchevents_list_partner_event_source_accounts]{list_partner_event_source_accounts} \tab An SaaS partner can use this operation to display the AWS account ID that a particular partner event source name is associated with\cr
#'  \link[=cloudwatchevents_list_partner_event_sources]{list_partner_event_sources} \tab An SaaS partner can use this operation to list all the partner event source names that they have created \cr
#'  \link[=cloudwatchevents_list_rule_names_by_target]{list_rule_names_by_target} \tab Lists the rules for the specified target \cr
#'  \link[=cloudwatchevents_list_rules]{list_rules} \tab Lists your Amazon EventBridge rules \cr
#'  \link[=cloudwatchevents_list_tags_for_resource]{list_tags_for_resource} \tab Displays the tags associated with an EventBridge resource \cr
#'  \link[=cloudwatchevents_list_targets_by_rule]{list_targets_by_rule} \tab Lists the targets assigned to the specified rule \cr
#'  \link[=cloudwatchevents_put_events]{put_events} \tab Sends custom events to Amazon EventBridge so that they can be matched to rules \cr
#'  \link[=cloudwatchevents_put_partner_events]{put_partner_events} \tab This is used by SaaS partners to write events to a customer's partner event bus \cr
#'  \link[=cloudwatchevents_put_permission]{put_permission} \tab Running PutPermission permits the specified AWS account or AWS organization to put events to the specified _event bus_ \cr
#'  \link[=cloudwatchevents_put_rule]{put_rule} \tab Creates or updates the specified rule \cr
#'  \link[=cloudwatchevents_put_targets]{put_targets} \tab Adds the specified targets to the specified rule, or updates the targets if they are already associated with the rule \cr
#'  \link[=cloudwatchevents_remove_permission]{remove_permission} \tab Revokes the permission of another AWS account to be able to put events to the specified event bus \cr
#'  \link[=cloudwatchevents_remove_targets]{remove_targets} \tab Removes the specified targets from the specified rule \cr
#'  \link[=cloudwatchevents_tag_resource]{tag_resource} \tab Assigns one or more tags (key-value pairs) to the specified EventBridge resource \cr
#'  \link[=cloudwatchevents_test_event_pattern]{test_event_pattern} \tab Tests whether the specified event pattern matches the provided event \cr
#'  \link[=cloudwatchevents_untag_resource]{untag_resource} \tab Removes one or more tags from the specified EventBridge resource 
#' }
#'
#' @rdname cloudwatchevents
#' @export
cloudwatchevents <- function(config = list()) {
  svc <- .cloudwatchevents$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.cloudwatchevents <- list()

.cloudwatchevents$operations <- list()

.cloudwatchevents$metadata <- list(
  service_name = "events",
  endpoints = list("*" = list(endpoint = "events.{region}.amazonaws.com", global = FALSE), "cn-*" = list(endpoint = "events.{region}.amazonaws.com.cn", global = FALSE), "us-iso-*" = list(endpoint = "events.{region}.c2s.ic.gov", global = FALSE), "us-isob-*" = list(endpoint = "events.{region}.sc2s.sgov.gov", global = FALSE)),
  service_id = "CloudWatch Events",
  api_version = "2015-10-07",
  signing_name = NULL,
  json_version = "1.1",
  target_prefix = "AWSEvents"
)

.cloudwatchevents$service <- function(config = list()) {
  handlers <- new_handlers("jsonrpc", "v4")
  new_service(.cloudwatchevents$metadata, handlers, config)
}
