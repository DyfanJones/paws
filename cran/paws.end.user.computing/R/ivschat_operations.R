# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include ivschat_service.R
NULL

#' Creates an encrypted token that is used by a chat participant to
#' establish an individual WebSocket chat connection to a room
#'
#' @description
#' Creates an encrypted token that is used by a chat participant to establish an individual WebSocket chat connection to a room. When the token is used to connect to chat, the connection is valid for the session duration specified in the request. The token becomes invalid at the token-expiration timestamp included in the response.
#'
#' See [https://www.paws-r-sdk.com/docs/ivschat_create_chat_token/](https://www.paws-r-sdk.com/docs/ivschat_create_chat_token/) for full documentation.
#'
#' @param roomIdentifier &#91;required&#93; Identifier of the room that the client is trying to access. Currently
#' this must be an ARN.
#' @param userId &#91;required&#93; Application-provided ID that uniquely identifies the user associated
#' with this token. This can be any UTF-8 encoded text.
#' @param capabilities Set of capabilities that the user is allowed to perform in the room.
#' Default: None (the capability to view messages is implicitly included in
#' all requests).
#' @param sessionDurationInMinutes Session duration (in minutes), after which the session expires. Default:
#' 60 (1 hour).
#' @param attributes Application-provided attributes to encode into the token and attach to a
#' chat session. Map keys and values can contain UTF-8 encoded text. The
#' maximum length of this field is 1 KB total.
#'
#' @keywords internal
#'
#' @rdname ivschat_create_chat_token
ivschat_create_chat_token <- function(roomIdentifier, userId, capabilities = NULL, sessionDurationInMinutes = NULL, attributes = NULL) {
  op <- new_operation(
    name = "CreateChatToken",
    http_method = "POST",
    http_path = "/CreateChatToken",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .ivschat$create_chat_token_input(roomIdentifier = roomIdentifier, userId = userId, capabilities = capabilities, sessionDurationInMinutes = sessionDurationInMinutes, attributes = attributes)
  output <- .ivschat$create_chat_token_output()
  config <- get_config()
  svc <- .ivschat$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ivschat$operations$create_chat_token <- ivschat_create_chat_token

#' Creates a logging configuration that allows clients to store and record
#' sent messages
#'
#' @description
#' Creates a logging configuration that allows clients to store and record sent messages.
#'
#' See [https://www.paws-r-sdk.com/docs/ivschat_create_logging_configuration/](https://www.paws-r-sdk.com/docs/ivschat_create_logging_configuration/) for full documentation.
#'
#' @param name Logging-configuration name. The value does not need to be unique.
#' @param destinationConfiguration &#91;required&#93; A complex type that contains a destination configuration for where chat
#' content will be logged. There can be only one type of destination
#' (`cloudWatchLogs`, `firehose`, or `s3`) in a `destinationConfiguration`.
#' @param tags Tags to attach to the resource. Array of maps, each of the form
#' `string:string (key:value)`. See [Best practices and
#' strategies](https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html)
#' in *Tagging Amazon Web Services Resources and Tag Editor* for details,
#' including restrictions that apply to tags and "Tag naming limits and
#' requirements"; Amazon IVS Chat has no constraints on tags beyond what is
#' documented there.
#'
#' @keywords internal
#'
#' @rdname ivschat_create_logging_configuration
ivschat_create_logging_configuration <- function(name = NULL, destinationConfiguration, tags = NULL) {
  op <- new_operation(
    name = "CreateLoggingConfiguration",
    http_method = "POST",
    http_path = "/CreateLoggingConfiguration",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .ivschat$create_logging_configuration_input(name = name, destinationConfiguration = destinationConfiguration, tags = tags)
  output <- .ivschat$create_logging_configuration_output()
  config <- get_config()
  svc <- .ivschat$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ivschat$operations$create_logging_configuration <- ivschat_create_logging_configuration

#' Creates a room that allows clients to connect and pass messages
#'
#' @description
#' Creates a room that allows clients to connect and pass messages.
#'
#' See [https://www.paws-r-sdk.com/docs/ivschat_create_room/](https://www.paws-r-sdk.com/docs/ivschat_create_room/) for full documentation.
#'
#' @param name Room name. The value does not need to be unique.
#' @param maximumMessageRatePerSecond Maximum number of messages per second that can be sent to the room (by
#' all clients). Default: 10.
#' @param maximumMessageLength Maximum number of characters in a single message. Messages are expected
#' to be UTF-8 encoded and this limit applies specifically to
#' rune/code-point count, not number of bytes. Default: 500.
#' @param messageReviewHandler Configuration information for optional review of messages.
#' @param tags Tags to attach to the resource. Array of maps, each of the form
#' `string:string (key:value)`. See [Best practices and
#' strategies](https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html)
#' in *Tagging Amazon Web Services Resources and Tag Editor* for details,
#' including restrictions that apply to tags and "Tag naming limits and
#' requirements"; Amazon IVS Chat has no constraints beyond what is
#' documented there.
#' @param loggingConfigurationIdentifiers Array of logging-configuration identifiers attached to the room.
#'
#' @keywords internal
#'
#' @rdname ivschat_create_room
ivschat_create_room <- function(name = NULL, maximumMessageRatePerSecond = NULL, maximumMessageLength = NULL, messageReviewHandler = NULL, tags = NULL, loggingConfigurationIdentifiers = NULL) {
  op <- new_operation(
    name = "CreateRoom",
    http_method = "POST",
    http_path = "/CreateRoom",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .ivschat$create_room_input(name = name, maximumMessageRatePerSecond = maximumMessageRatePerSecond, maximumMessageLength = maximumMessageLength, messageReviewHandler = messageReviewHandler, tags = tags, loggingConfigurationIdentifiers = loggingConfigurationIdentifiers)
  output <- .ivschat$create_room_output()
  config <- get_config()
  svc <- .ivschat$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ivschat$operations$create_room <- ivschat_create_room

#' Deletes the specified logging configuration
#'
#' @description
#' Deletes the specified logging configuration.
#'
#' See [https://www.paws-r-sdk.com/docs/ivschat_delete_logging_configuration/](https://www.paws-r-sdk.com/docs/ivschat_delete_logging_configuration/) for full documentation.
#'
#' @param identifier &#91;required&#93; Identifier of the logging configuration to be deleted.
#'
#' @keywords internal
#'
#' @rdname ivschat_delete_logging_configuration
ivschat_delete_logging_configuration <- function(identifier) {
  op <- new_operation(
    name = "DeleteLoggingConfiguration",
    http_method = "POST",
    http_path = "/DeleteLoggingConfiguration",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .ivschat$delete_logging_configuration_input(identifier = identifier)
  output <- .ivschat$delete_logging_configuration_output()
  config <- get_config()
  svc <- .ivschat$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ivschat$operations$delete_logging_configuration <- ivschat_delete_logging_configuration

#' Sends an event to a specific room which directs clients to delete a
#' specific message; that is, unrender it from view and delete it from the
#' client’s chat history
#'
#' @description
#' Sends an event to a specific room which directs clients to delete a specific message; that is, unrender it from view and delete it from the client’s chat history. This event’s `EventName` is `aws:DELETE_MESSAGE`. This replicates the [DeleteMessage](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-deletemessage-publish.html) WebSocket operation in the Amazon IVS Chat Messaging API.
#'
#' See [https://www.paws-r-sdk.com/docs/ivschat_delete_message/](https://www.paws-r-sdk.com/docs/ivschat_delete_message/) for full documentation.
#'
#' @param roomIdentifier &#91;required&#93; Identifier of the room where the message should be deleted. Currently
#' this must be an ARN.
#' @param id &#91;required&#93; ID of the message to be deleted. This is the `Id` field in the received
#' message (see [Message
#' (Subscribe)](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-message-subscribe.html)
#' in the Chat Messaging API).
#' @param reason Reason for deleting the message.
#'
#' @keywords internal
#'
#' @rdname ivschat_delete_message
ivschat_delete_message <- function(roomIdentifier, id, reason = NULL) {
  op <- new_operation(
    name = "DeleteMessage",
    http_method = "POST",
    http_path = "/DeleteMessage",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .ivschat$delete_message_input(roomIdentifier = roomIdentifier, id = id, reason = reason)
  output <- .ivschat$delete_message_output()
  config <- get_config()
  svc <- .ivschat$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ivschat$operations$delete_message <- ivschat_delete_message

#' Deletes the specified room
#'
#' @description
#' Deletes the specified room.
#'
#' See [https://www.paws-r-sdk.com/docs/ivschat_delete_room/](https://www.paws-r-sdk.com/docs/ivschat_delete_room/) for full documentation.
#'
#' @param identifier &#91;required&#93; Identifier of the room to be deleted. Currently this must be an ARN.
#'
#' @keywords internal
#'
#' @rdname ivschat_delete_room
ivschat_delete_room <- function(identifier) {
  op <- new_operation(
    name = "DeleteRoom",
    http_method = "POST",
    http_path = "/DeleteRoom",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .ivschat$delete_room_input(identifier = identifier)
  output <- .ivschat$delete_room_output()
  config <- get_config()
  svc <- .ivschat$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ivschat$operations$delete_room <- ivschat_delete_room

#' Disconnects all connections using a specified user ID from a room
#'
#' @description
#' Disconnects all connections using a specified user ID from a room. This replicates the [DisconnectUser](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-disconnectuser-publish.html) WebSocket operation in the Amazon IVS Chat Messaging API.
#'
#' See [https://www.paws-r-sdk.com/docs/ivschat_disconnect_user/](https://www.paws-r-sdk.com/docs/ivschat_disconnect_user/) for full documentation.
#'
#' @param roomIdentifier &#91;required&#93; Identifier of the room from which the user's clients should be
#' disconnected. Currently this must be an ARN.
#' @param userId &#91;required&#93; ID of the user (connection) to disconnect from the room.
#' @param reason Reason for disconnecting the user.
#'
#' @keywords internal
#'
#' @rdname ivschat_disconnect_user
ivschat_disconnect_user <- function(roomIdentifier, userId, reason = NULL) {
  op <- new_operation(
    name = "DisconnectUser",
    http_method = "POST",
    http_path = "/DisconnectUser",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .ivschat$disconnect_user_input(roomIdentifier = roomIdentifier, userId = userId, reason = reason)
  output <- .ivschat$disconnect_user_output()
  config <- get_config()
  svc <- .ivschat$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ivschat$operations$disconnect_user <- ivschat_disconnect_user

#' Gets the specified logging configuration
#'
#' @description
#' Gets the specified logging configuration.
#'
#' See [https://www.paws-r-sdk.com/docs/ivschat_get_logging_configuration/](https://www.paws-r-sdk.com/docs/ivschat_get_logging_configuration/) for full documentation.
#'
#' @param identifier &#91;required&#93; Identifier of the logging configuration to be retrieved.
#'
#' @keywords internal
#'
#' @rdname ivschat_get_logging_configuration
ivschat_get_logging_configuration <- function(identifier) {
  op <- new_operation(
    name = "GetLoggingConfiguration",
    http_method = "POST",
    http_path = "/GetLoggingConfiguration",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .ivschat$get_logging_configuration_input(identifier = identifier)
  output <- .ivschat$get_logging_configuration_output()
  config <- get_config()
  svc <- .ivschat$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ivschat$operations$get_logging_configuration <- ivschat_get_logging_configuration

#' Gets the specified room
#'
#' @description
#' Gets the specified room.
#'
#' See [https://www.paws-r-sdk.com/docs/ivschat_get_room/](https://www.paws-r-sdk.com/docs/ivschat_get_room/) for full documentation.
#'
#' @param identifier &#91;required&#93; Identifier of the room for which the configuration is to be retrieved.
#' Currently this must be an ARN.
#'
#' @keywords internal
#'
#' @rdname ivschat_get_room
ivschat_get_room <- function(identifier) {
  op <- new_operation(
    name = "GetRoom",
    http_method = "POST",
    http_path = "/GetRoom",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .ivschat$get_room_input(identifier = identifier)
  output <- .ivschat$get_room_output()
  config <- get_config()
  svc <- .ivschat$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ivschat$operations$get_room <- ivschat_get_room

#' Gets summary information about all your logging configurations in the
#' AWS region where the API request is processed
#'
#' @description
#' Gets summary information about all your logging configurations in the AWS region where the API request is processed.
#'
#' See [https://www.paws-r-sdk.com/docs/ivschat_list_logging_configurations/](https://www.paws-r-sdk.com/docs/ivschat_list_logging_configurations/) for full documentation.
#'
#' @param nextToken The first logging configurations to retrieve. This is used for
#' pagination; see the `nextToken` response field.
#' @param maxResults Maximum number of logging configurations to return. Default: 50.
#'
#' @keywords internal
#'
#' @rdname ivschat_list_logging_configurations
ivschat_list_logging_configurations <- function(nextToken = NULL, maxResults = NULL) {
  op <- new_operation(
    name = "ListLoggingConfigurations",
    http_method = "POST",
    http_path = "/ListLoggingConfigurations",
    host_prefix = "",
    paginator = list(input_token = "nextToken", output_token = "nextToken", limit_key = "maxResults"),
    stream_api = FALSE
  )
  input <- .ivschat$list_logging_configurations_input(nextToken = nextToken, maxResults = maxResults)
  output <- .ivschat$list_logging_configurations_output()
  config <- get_config()
  svc <- .ivschat$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ivschat$operations$list_logging_configurations <- ivschat_list_logging_configurations

#' Gets summary information about all your rooms in the AWS region where
#' the API request is processed
#'
#' @description
#' Gets summary information about all your rooms in the AWS region where the API request is processed. Results are sorted in descending order of `updateTime`.
#'
#' See [https://www.paws-r-sdk.com/docs/ivschat_list_rooms/](https://www.paws-r-sdk.com/docs/ivschat_list_rooms/) for full documentation.
#'
#' @param name Filters the list to match the specified room name.
#' @param nextToken The first room to retrieve. This is used for pagination; see the
#' `nextToken` response field.
#' @param maxResults Maximum number of rooms to return. Default: 50.
#' @param messageReviewHandlerUri Filters the list to match the specified message review handler URI.
#' @param loggingConfigurationIdentifier Logging-configuration identifier.
#'
#' @keywords internal
#'
#' @rdname ivschat_list_rooms
ivschat_list_rooms <- function(name = NULL, nextToken = NULL, maxResults = NULL, messageReviewHandlerUri = NULL, loggingConfigurationIdentifier = NULL) {
  op <- new_operation(
    name = "ListRooms",
    http_method = "POST",
    http_path = "/ListRooms",
    host_prefix = "",
    paginator = list(input_token = "nextToken", output_token = "nextToken", limit_key = "maxResults"),
    stream_api = FALSE
  )
  input <- .ivschat$list_rooms_input(name = name, nextToken = nextToken, maxResults = maxResults, messageReviewHandlerUri = messageReviewHandlerUri, loggingConfigurationIdentifier = loggingConfigurationIdentifier)
  output <- .ivschat$list_rooms_output()
  config <- get_config()
  svc <- .ivschat$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ivschat$operations$list_rooms <- ivschat_list_rooms

#' Gets information about AWS tags for the specified ARN
#'
#' @description
#' Gets information about AWS tags for the specified ARN.
#'
#' See [https://www.paws-r-sdk.com/docs/ivschat_list_tags_for_resource/](https://www.paws-r-sdk.com/docs/ivschat_list_tags_for_resource/) for full documentation.
#'
#' @param resourceArn &#91;required&#93; The ARN of the resource to be retrieved. The ARN must be URL-encoded.
#'
#' @keywords internal
#'
#' @rdname ivschat_list_tags_for_resource
ivschat_list_tags_for_resource <- function(resourceArn) {
  op <- new_operation(
    name = "ListTagsForResource",
    http_method = "GET",
    http_path = "/tags/{resourceArn}",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .ivschat$list_tags_for_resource_input(resourceArn = resourceArn)
  output <- .ivschat$list_tags_for_resource_output()
  config <- get_config()
  svc <- .ivschat$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ivschat$operations$list_tags_for_resource <- ivschat_list_tags_for_resource

#' Sends an event to a room
#'
#' @description
#' Sends an event to a room. Use this within your application’s business logic to send events to clients of a room; e.g., to notify clients to change the way the chat UI is rendered.
#'
#' See [https://www.paws-r-sdk.com/docs/ivschat_send_event/](https://www.paws-r-sdk.com/docs/ivschat_send_event/) for full documentation.
#'
#' @param roomIdentifier &#91;required&#93; Identifier of the room to which the event will be sent. Currently this
#' must be an ARN.
#' @param eventName &#91;required&#93; Application-defined name of the event to send to clients.
#' @param attributes Application-defined metadata to attach to the event sent to clients. The
#' maximum length of the metadata is 1 KB total.
#'
#' @keywords internal
#'
#' @rdname ivschat_send_event
ivschat_send_event <- function(roomIdentifier, eventName, attributes = NULL) {
  op <- new_operation(
    name = "SendEvent",
    http_method = "POST",
    http_path = "/SendEvent",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .ivschat$send_event_input(roomIdentifier = roomIdentifier, eventName = eventName, attributes = attributes)
  output <- .ivschat$send_event_output()
  config <- get_config()
  svc <- .ivschat$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ivschat$operations$send_event <- ivschat_send_event

#' Adds or updates tags for the AWS resource with the specified ARN
#'
#' @description
#' Adds or updates tags for the AWS resource with the specified ARN.
#'
#' See [https://www.paws-r-sdk.com/docs/ivschat_tag_resource/](https://www.paws-r-sdk.com/docs/ivschat_tag_resource/) for full documentation.
#'
#' @param resourceArn &#91;required&#93; The ARN of the resource to be tagged. The ARN must be URL-encoded.
#' @param tags &#91;required&#93; Array of tags to be added or updated. Array of maps, each of the form
#' `string:string (key:value)`. See [Best practices and
#' strategies](https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html)
#' in *Tagging Amazon Web Services Resources and Tag Editor* for details,
#' including restrictions that apply to tags and "Tag naming limits and
#' requirements"; Amazon IVS Chat has no constraints beyond what is
#' documented there.
#'
#' @keywords internal
#'
#' @rdname ivschat_tag_resource
ivschat_tag_resource <- function(resourceArn, tags) {
  op <- new_operation(
    name = "TagResource",
    http_method = "POST",
    http_path = "/tags/{resourceArn}",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .ivschat$tag_resource_input(resourceArn = resourceArn, tags = tags)
  output <- .ivschat$tag_resource_output()
  config <- get_config()
  svc <- .ivschat$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ivschat$operations$tag_resource <- ivschat_tag_resource

#' Removes tags from the resource with the specified ARN
#'
#' @description
#' Removes tags from the resource with the specified ARN.
#'
#' See [https://www.paws-r-sdk.com/docs/ivschat_untag_resource/](https://www.paws-r-sdk.com/docs/ivschat_untag_resource/) for full documentation.
#'
#' @param resourceArn &#91;required&#93; The ARN of the resource to be untagged. The ARN must be URL-encoded.
#' @param tagKeys &#91;required&#93; Array of tags to be removed. Array of maps, each of the form
#' `string:string (key:value)`. See [Best practices and
#' strategies](https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html)
#' in *Tagging Amazon Web Services Resources and Tag Editor* for details,
#' including restrictions that apply to tags and "Tag naming limits and
#' requirements"; Amazon IVS Chat has no constraints beyond what is
#' documented there.
#'
#' @keywords internal
#'
#' @rdname ivschat_untag_resource
ivschat_untag_resource <- function(resourceArn, tagKeys) {
  op <- new_operation(
    name = "UntagResource",
    http_method = "DELETE",
    http_path = "/tags/{resourceArn}",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .ivschat$untag_resource_input(resourceArn = resourceArn, tagKeys = tagKeys)
  output <- .ivschat$untag_resource_output()
  config <- get_config()
  svc <- .ivschat$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ivschat$operations$untag_resource <- ivschat_untag_resource

#' Updates a specified logging configuration
#'
#' @description
#' Updates a specified logging configuration.
#'
#' See [https://www.paws-r-sdk.com/docs/ivschat_update_logging_configuration/](https://www.paws-r-sdk.com/docs/ivschat_update_logging_configuration/) for full documentation.
#'
#' @param identifier &#91;required&#93; Identifier of the logging configuration to be updated.
#' @param name Logging-configuration name. The value does not need to be unique.
#' @param destinationConfiguration A complex type that contains a destination configuration for where chat
#' content will be logged. There can be only one type of destination
#' (`cloudWatchLogs`, `firehose`, or `s3`) in a `destinationConfiguration`.
#'
#' @keywords internal
#'
#' @rdname ivschat_update_logging_configuration
ivschat_update_logging_configuration <- function(identifier, name = NULL, destinationConfiguration = NULL) {
  op <- new_operation(
    name = "UpdateLoggingConfiguration",
    http_method = "POST",
    http_path = "/UpdateLoggingConfiguration",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .ivschat$update_logging_configuration_input(identifier = identifier, name = name, destinationConfiguration = destinationConfiguration)
  output <- .ivschat$update_logging_configuration_output()
  config <- get_config()
  svc <- .ivschat$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ivschat$operations$update_logging_configuration <- ivschat_update_logging_configuration

#' Updates a room’s configuration
#'
#' @description
#' Updates a room’s configuration.
#'
#' See [https://www.paws-r-sdk.com/docs/ivschat_update_room/](https://www.paws-r-sdk.com/docs/ivschat_update_room/) for full documentation.
#'
#' @param identifier &#91;required&#93; Identifier of the room to be updated. Currently this must be an ARN.
#' @param name Room name. The value does not need to be unique.
#' @param maximumMessageRatePerSecond Maximum number of messages per second that can be sent to the room (by
#' all clients). Default: 10.
#' @param maximumMessageLength The maximum number of characters in a single message. Messages are
#' expected to be UTF-8 encoded and this limit applies specifically to
#' rune/code-point count, not number of bytes. Default: 500.
#' @param messageReviewHandler Configuration information for optional review of messages. Specify an
#' empty `uri` string to disassociate a message review handler from the
#' specified room.
#' @param loggingConfigurationIdentifiers Array of logging-configuration identifiers attached to the room.
#'
#' @keywords internal
#'
#' @rdname ivschat_update_room
ivschat_update_room <- function(identifier, name = NULL, maximumMessageRatePerSecond = NULL, maximumMessageLength = NULL, messageReviewHandler = NULL, loggingConfigurationIdentifiers = NULL) {
  op <- new_operation(
    name = "UpdateRoom",
    http_method = "POST",
    http_path = "/UpdateRoom",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .ivschat$update_room_input(identifier = identifier, name = name, maximumMessageRatePerSecond = maximumMessageRatePerSecond, maximumMessageLength = maximumMessageLength, messageReviewHandler = messageReviewHandler, loggingConfigurationIdentifiers = loggingConfigurationIdentifiers)
  output <- .ivschat$update_room_output()
  config <- get_config()
  svc <- .ivschat$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ivschat$operations$update_room <- ivschat_update_room
