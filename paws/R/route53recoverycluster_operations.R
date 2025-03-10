# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include route53recoverycluster_service.R
NULL

#' Get the state for a routing control
#'
#' @description
#' Get the state for a routing control. A routing control is a simple
#' on/off switch that you can use to route traffic to cells. When a routing
#' control state is set to ON, traffic flows to a cell. When the state is
#' set to OFF, traffic does not flow.
#' 
#' Before you can create a routing control, you must first create a
#' cluster, and then host the control in a control panel on the cluster.
#' For more information, see [Create routing control
#' structures](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.create.html)
#' in the Amazon Route 53 Application Recovery Controller Developer Guide.
#' You access one of the endpoints for the cluster to get or update the
#' routing control state to redirect traffic for your application.
#' 
#' *You must specify Regional endpoints when you work with API cluster
#' operations to get or update routing control states in Route 53 ARC.*
#' 
#' To see a code example for getting a routing control state, including
#' accessing Regional cluster endpoints in sequence, see [API
#' examples](https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html)
#' in the Amazon Route 53 Application Recovery Controller Developer Guide.
#' 
#' Learn more about working with routing controls in the following topics
#' in the Amazon Route 53 Application Recovery Controller Developer Guide:
#' 
#' -   [Viewing and updating routing control
#'     states](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)
#' 
#' -   [Working with routing controls in Route 53
#'     ARC](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)
#'
#' @usage
#' route53recoverycluster_get_routing_control_state(RoutingControlArn)
#'
#' @param RoutingControlArn &#91;required&#93; The Amazon Resource Name (ARN) for the routing control that you want to
#' get the state for.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   RoutingControlArn = "string",
#'   RoutingControlState = "On"|"Off",
#'   RoutingControlName = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$get_routing_control_state(
#'   RoutingControlArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname route53recoverycluster_get_routing_control_state
#'
#' @aliases route53recoverycluster_get_routing_control_state
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
#' List routing control names and Amazon Resource Names (ARNs), as well as
#' the routing control state for each routing control, along with the
#' control panel name and control panel ARN for the routing controls. If
#' you specify a control panel ARN, this call lists the routing controls in
#' the control panel. Otherwise, it lists all the routing controls in the
#' cluster.
#' 
#' A routing control is a simple on/off switch in Route 53 ARC that you can
#' use to route traffic to cells. When a routing control state is set to
#' ON, traffic flows to a cell. When the state is set to OFF, traffic does
#' not flow.
#' 
#' Before you can create a routing control, you must first create a
#' cluster, and then host the control in a control panel on the cluster.
#' For more information, see [Create routing control
#' structures](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.create.html)
#' in the Amazon Route 53 Application Recovery Controller Developer Guide.
#' You access one of the endpoints for the cluster to get or update the
#' routing control state to redirect traffic for your application.
#' 
#' *You must specify Regional endpoints when you work with API cluster
#' operations to use this API operation to list routing controls in Route
#' 53 ARC.*
#' 
#' Learn more about working with routing controls in the following topics
#' in the Amazon Route 53 Application Recovery Controller Developer Guide:
#' 
#' -   [Viewing and updating routing control
#'     states](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)
#' 
#' -   [Working with routing controls in Route 53
#'     ARC](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)
#'
#' @usage
#' route53recoverycluster_list_routing_controls(ControlPanelArn, NextToken,
#'   MaxResults)
#'
#' @param ControlPanelArn The Amazon Resource Name (ARN) of the control panel of the routing
#' controls to list.
#' @param NextToken The token for the next set of results. You receive this token from a
#' previous call.
#' @param MaxResults The number of routing controls objects that you want to return with this
#' call. The default value is 500.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   RoutingControls = list(
#'     list(
#'       ControlPanelArn = "string",
#'       ControlPanelName = "string",
#'       RoutingControlArn = "string",
#'       RoutingControlName = "string",
#'       RoutingControlState = "On"|"Off",
#'       Owner = "string"
#'     )
#'   ),
#'   NextToken = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_routing_controls(
#'   ControlPanelArn = "string",
#'   NextToken = "string",
#'   MaxResults = 123
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname route53recoverycluster_list_routing_controls
#'
#' @aliases route53recoverycluster_list_routing_controls
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
#' Set the state of the routing control to reroute traffic. You can set the
#' value to ON or OFF. When the state is ON, traffic flows to a cell. When
#' the state is OFF, traffic does not flow.
#' 
#' With Route 53 ARC, you can add safety rules for routing controls, which
#' are safeguards for routing control state updates that help prevent
#' unexpected outcomes, like fail open traffic routing. However, there are
#' scenarios when you might want to bypass the routing control safeguards
#' that are enforced with safety rules that you've configured. For example,
#' you might want to fail over quickly for disaster recovery, and one or
#' more safety rules might be unexpectedly preventing you from updating a
#' routing control state to reroute traffic. In a "break glass" scenario
#' like this, you can override one or more safety rules to change a routing
#' control state and fail over your application.
#' 
#' The `SafetyRulesToOverride` property enables you override one or more
#' safety rules and update routing control states. For more information,
#' see [Override safety rules to reroute
#' traffic](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html)
#' in the Amazon Route 53 Application Recovery Controller Developer Guide.
#' 
#' *You must specify Regional endpoints when you work with API cluster
#' operations to get or update routing control states in Route 53 ARC.*
#' 
#' To see a code example for getting a routing control state, including
#' accessing Regional cluster endpoints in sequence, see [API
#' examples](https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html)
#' in the Amazon Route 53 Application Recovery Controller Developer Guide.
#' 
#' -   [Viewing and updating routing control
#'     states](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)
#' 
#' -   [Working with routing controls
#'     overall](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)
#'
#' @usage
#' route53recoverycluster_update_routing_control_state(RoutingControlArn,
#'   RoutingControlState, SafetyRulesToOverride)
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
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$update_routing_control_state(
#'   RoutingControlArn = "string",
#'   RoutingControlState = "On"|"Off",
#'   SafetyRulesToOverride = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname route53recoverycluster_update_routing_control_state
#'
#' @aliases route53recoverycluster_update_routing_control_state
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
#' Set multiple routing control states. You can set the value for each
#' state to be ON or OFF. When the state is ON, traffic flows to a cell.
#' When it's OFF, traffic does not flow.
#' 
#' With Route 53 ARC, you can add safety rules for routing controls, which
#' are safeguards for routing control state updates that help prevent
#' unexpected outcomes, like fail open traffic routing. However, there are
#' scenarios when you might want to bypass the routing control safeguards
#' that are enforced with safety rules that you've configured. For example,
#' you might want to fail over quickly for disaster recovery, and one or
#' more safety rules might be unexpectedly preventing you from updating a
#' routing control state to reroute traffic. In a "break glass" scenario
#' like this, you can override one or more safety rules to change a routing
#' control state and fail over your application.
#' 
#' The `SafetyRulesToOverride` property enables you override one or more
#' safety rules and update routing control states. For more information,
#' see [Override safety rules to reroute
#' traffic](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html)
#' in the Amazon Route 53 Application Recovery Controller Developer Guide.
#' 
#' *You must specify Regional endpoints when you work with API cluster
#' operations to get or update routing control states in Route 53 ARC.*
#' 
#' To see a code example for getting a routing control state, including
#' accessing Regional cluster endpoints in sequence, see [API
#' examples](https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html)
#' in the Amazon Route 53 Application Recovery Controller Developer Guide.
#' 
#' -   [Viewing and updating routing control
#'     states](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)
#' 
#' -   [Working with routing controls
#'     overall](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)
#'
#' @usage
#' route53recoverycluster_update_routing_control_states(
#'   UpdateRoutingControlStateEntries, SafetyRulesToOverride)
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
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$update_routing_control_states(
#'   UpdateRoutingControlStateEntries = list(
#'     list(
#'       RoutingControlArn = "string",
#'       RoutingControlState = "On"|"Off"
#'     )
#'   ),
#'   SafetyRulesToOverride = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname route53recoverycluster_update_routing_control_states
#'
#' @aliases route53recoverycluster_update_routing_control_states
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
