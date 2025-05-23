# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include route53recoverycluster_service.R
NULL

#' Get the state for a routing control
#'
#' @description
#' Get the state for a routing control. A routing control is a simple on/off switch that you can use to route traffic to cells. When a routing control state is set to ON, traffic flows to a cell. When the state is set to OFF, traffic does not flow.
#'
#' See [https://www.paws-r-sdk.com/docs/route53recoverycluster_get_routing_control_state/](https://www.paws-r-sdk.com/docs/route53recoverycluster_get_routing_control_state/) for full documentation.
#'
#' @param RoutingControlArn &#91;required&#93; The Amazon Resource Name (ARN) for the routing control that you want to
#' get the state for.
#'
#' @keywords internal
#'
#' @rdname route53recoverycluster_get_routing_control_state
route53recoverycluster_get_routing_control_state <- function(RoutingControlArn) {
  op <- new_operation(
    name = "GetRoutingControlState",
    http_method = "POST",
    http_path = "/",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .route53recoverycluster$get_routing_control_state_input(RoutingControlArn = RoutingControlArn)
  output <- .route53recoverycluster$get_routing_control_state_output()
  config <- get_config()
  svc <- .route53recoverycluster$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.route53recoverycluster$operations$get_routing_control_state <- route53recoverycluster_get_routing_control_state

#' List routing control names and Amazon Resource Names (ARNs), as well as
#' the routing control state for each routing control, along with the
#' control panel name and control panel ARN for the routing controls
#'
#' @description
#' List routing control names and Amazon Resource Names (ARNs), as well as the routing control state for each routing control, along with the control panel name and control panel ARN for the routing controls. If you specify a control panel ARN, this call lists the routing controls in the control panel. Otherwise, it lists all the routing controls in the cluster.
#'
#' See [https://www.paws-r-sdk.com/docs/route53recoverycluster_list_routing_controls/](https://www.paws-r-sdk.com/docs/route53recoverycluster_list_routing_controls/) for full documentation.
#'
#' @param ControlPanelArn The Amazon Resource Name (ARN) of the control panel of the routing
#' controls to list.
#' @param NextToken The token for the next set of results. You receive this token from a
#' previous call.
#' @param MaxResults The number of routing controls objects that you want to return with this
#' call. The default value is 500.
#'
#' @keywords internal
#'
#' @rdname route53recoverycluster_list_routing_controls
route53recoverycluster_list_routing_controls <- function(ControlPanelArn = NULL, NextToken = NULL, MaxResults = NULL) {
  op <- new_operation(
    name = "ListRoutingControls",
    http_method = "POST",
    http_path = "/",
    host_prefix = "",
    paginator = list(input_token = "NextToken", output_token = "NextToken", limit_key = "MaxResults", result_key = "RoutingControls"),
    stream_api = FALSE
  )
  input <- .route53recoverycluster$list_routing_controls_input(ControlPanelArn = ControlPanelArn, NextToken = NextToken, MaxResults = MaxResults)
  output <- .route53recoverycluster$list_routing_controls_output()
  config <- get_config()
  svc <- .route53recoverycluster$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.route53recoverycluster$operations$list_routing_controls <- route53recoverycluster_list_routing_controls

#' Set the state of the routing control to reroute traffic
#'
#' @description
#' Set the state of the routing control to reroute traffic. You can set the value to ON or OFF. When the state is ON, traffic flows to a cell. When the state is OFF, traffic does not flow.
#'
#' See [https://www.paws-r-sdk.com/docs/route53recoverycluster_update_routing_control_state/](https://www.paws-r-sdk.com/docs/route53recoverycluster_update_routing_control_state/) for full documentation.
#'
#' @param RoutingControlArn &#91;required&#93; The Amazon Resource Name (ARN) for the routing control that you want to
#' update the state for.
#' @param RoutingControlState &#91;required&#93; The state of the routing control. You can set the value to ON or OFF.
#' @param SafetyRulesToOverride The Amazon Resource Names (ARNs) for the safety rules that you want to
#' override when you're updating the state of a routing control. You can
#' override one safety rule or multiple safety rules by including one or
#' more ARNs, separated by commas.
#' 
#' For more information, see [Override safety rules to reroute
#' traffic](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html)
#' in the Amazon Route 53 Application Recovery Controller Developer Guide.
#'
#' @keywords internal
#'
#' @rdname route53recoverycluster_update_routing_control_state
route53recoverycluster_update_routing_control_state <- function(RoutingControlArn, RoutingControlState, SafetyRulesToOverride = NULL) {
  op <- new_operation(
    name = "UpdateRoutingControlState",
    http_method = "POST",
    http_path = "/",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .route53recoverycluster$update_routing_control_state_input(RoutingControlArn = RoutingControlArn, RoutingControlState = RoutingControlState, SafetyRulesToOverride = SafetyRulesToOverride)
  output <- .route53recoverycluster$update_routing_control_state_output()
  config <- get_config()
  svc <- .route53recoverycluster$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.route53recoverycluster$operations$update_routing_control_state <- route53recoverycluster_update_routing_control_state

#' Set multiple routing control states
#'
#' @description
#' Set multiple routing control states. You can set the value for each state to be ON or OFF. When the state is ON, traffic flows to a cell. When it's OFF, traffic does not flow.
#'
#' See [https://www.paws-r-sdk.com/docs/route53recoverycluster_update_routing_control_states/](https://www.paws-r-sdk.com/docs/route53recoverycluster_update_routing_control_states/) for full documentation.
#'
#' @param UpdateRoutingControlStateEntries &#91;required&#93; A set of routing control entries that you want to update.
#' @param SafetyRulesToOverride The Amazon Resource Names (ARNs) for the safety rules that you want to
#' override when you're updating routing control states. You can override
#' one safety rule or multiple safety rules by including one or more ARNs,
#' separated by commas.
#' 
#' For more information, see [Override safety rules to reroute
#' traffic](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html)
#' in the Amazon Route 53 Application Recovery Controller Developer Guide.
#'
#' @keywords internal
#'
#' @rdname route53recoverycluster_update_routing_control_states
route53recoverycluster_update_routing_control_states <- function(UpdateRoutingControlStateEntries, SafetyRulesToOverride = NULL) {
  op <- new_operation(
    name = "UpdateRoutingControlStates",
    http_method = "POST",
    http_path = "/",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .route53recoverycluster$update_routing_control_states_input(UpdateRoutingControlStateEntries = UpdateRoutingControlStateEntries, SafetyRulesToOverride = SafetyRulesToOverride)
  output <- .route53recoverycluster$update_routing_control_states_output()
  config <- get_config()
  svc <- .route53recoverycluster$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.route53recoverycluster$operations$update_routing_control_states <- route53recoverycluster_update_routing_control_states
