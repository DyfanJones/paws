# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include connectparticipant_service.R
NULL

#' Cancels the authentication session
#'
#' @description
#' Cancels the authentication session. The opted out branch of the Authenticate Customer flow block will be taken.
#'
#' See [https://www.paws-r-sdk.com/docs/connectparticipant_cancel_participant_authentication/](https://www.paws-r-sdk.com/docs/connectparticipant_cancel_participant_authentication/) for full documentation.
#'
#' @param SessionId &#91;required&#93; The `sessionId` provided in the `authenticationInitiated` event.
#' @param ConnectionToken &#91;required&#93; The authentication token associated with the participant's connection.
#'
#' @keywords internal
#'
#' @rdname connectparticipant_cancel_participant_authentication
connectparticipant_cancel_participant_authentication <- function(SessionId, ConnectionToken) {
  op <- new_operation(
    name = "CancelParticipantAuthentication",
    http_method = "POST",
    http_path = "/participant/cancel-authentication",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .connectparticipant$cancel_participant_authentication_input(SessionId = SessionId, ConnectionToken = ConnectionToken)
  output <- .connectparticipant$cancel_participant_authentication_output()
  config <- get_config()
  svc <- .connectparticipant$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.connectparticipant$operations$cancel_participant_authentication <- connectparticipant_cancel_participant_authentication

#' Allows you to confirm that the attachment has been uploaded using the
#' pre-signed URL provided in StartAttachmentUpload API
#'
#' @description
#' Allows you to confirm that the attachment has been uploaded using the pre-signed URL provided in StartAttachmentUpload API. A conflict exception is thrown when an attachment with that identifier is already being uploaded.
#'
#' See [https://www.paws-r-sdk.com/docs/connectparticipant_complete_attachment_upload/](https://www.paws-r-sdk.com/docs/connectparticipant_complete_attachment_upload/) for full documentation.
#'
#' @param AttachmentIds &#91;required&#93; A list of unique identifiers for the attachments.
#' @param ClientToken &#91;required&#93; A unique, case-sensitive identifier that you provide to ensure the
#' idempotency of the request. If not provided, the Amazon Web Services SDK
#' populates this field. For more information about idempotency, see
#' [Making retries safe with idempotent
#' APIs](https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).
#' @param ConnectionToken &#91;required&#93; The authentication token associated with the participant's connection.
#'
#' @keywords internal
#'
#' @rdname connectparticipant_complete_attachment_upload
connectparticipant_complete_attachment_upload <- function(AttachmentIds, ClientToken, ConnectionToken) {
  op <- new_operation(
    name = "CompleteAttachmentUpload",
    http_method = "POST",
    http_path = "/participant/complete-attachment-upload",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .connectparticipant$complete_attachment_upload_input(AttachmentIds = AttachmentIds, ClientToken = ClientToken, ConnectionToken = ConnectionToken)
  output <- .connectparticipant$complete_attachment_upload_output()
  config <- get_config()
  svc <- .connectparticipant$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.connectparticipant$operations$complete_attachment_upload <- connectparticipant_complete_attachment_upload

#' Creates the participant's connection
#'
#' @description
#' Creates the participant's connection.
#'
#' See [https://www.paws-r-sdk.com/docs/connectparticipant_create_participant_connection/](https://www.paws-r-sdk.com/docs/connectparticipant_create_participant_connection/) for full documentation.
#'
#' @param Type Type of connection information required. If you need
#' `CONNECTION_CREDENTIALS` along with marking participant as connected,
#' pass `CONNECTION_CREDENTIALS` in `Type`.
#' @param ParticipantToken &#91;required&#93; This is a header parameter.
#' 
#' The ParticipantToken as obtained from
#' [StartChatContact](https://docs.aws.amazon.com/connect/latest/APIReference/API_StartChatContact.html)
#' API response.
#' @param ConnectParticipant Amazon Connect Participant is used to mark the participant as connected
#' for customer participant in message streaming, as well as for agent or
#' manager participant in non-streaming chats.
#'
#' @keywords internal
#'
#' @rdname connectparticipant_create_participant_connection
connectparticipant_create_participant_connection <- function(Type = NULL, ParticipantToken, ConnectParticipant = NULL) {
  op <- new_operation(
    name = "CreateParticipantConnection",
    http_method = "POST",
    http_path = "/participant/connection",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .connectparticipant$create_participant_connection_input(Type = Type, ParticipantToken = ParticipantToken, ConnectParticipant = ConnectParticipant)
  output <- .connectparticipant$create_participant_connection_output()
  config <- get_config()
  svc <- .connectparticipant$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.connectparticipant$operations$create_participant_connection <- connectparticipant_create_participant_connection

#' Retrieves the view for the specified view token
#'
#' @description
#' Retrieves the view for the specified view token.
#'
#' See [https://www.paws-r-sdk.com/docs/connectparticipant_describe_view/](https://www.paws-r-sdk.com/docs/connectparticipant_describe_view/) for full documentation.
#'
#' @param ViewToken &#91;required&#93; An encrypted token originating from the interactive message of a
#' ShowView block operation. Represents the desired view.
#' @param ConnectionToken &#91;required&#93; The connection token.
#'
#' @keywords internal
#'
#' @rdname connectparticipant_describe_view
connectparticipant_describe_view <- function(ViewToken, ConnectionToken) {
  op <- new_operation(
    name = "DescribeView",
    http_method = "GET",
    http_path = "/participant/views/{ViewToken}",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .connectparticipant$describe_view_input(ViewToken = ViewToken, ConnectionToken = ConnectionToken)
  output <- .connectparticipant$describe_view_output()
  config <- get_config()
  svc <- .connectparticipant$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.connectparticipant$operations$describe_view <- connectparticipant_describe_view

#' Disconnects a participant
#'
#' @description
#' Disconnects a participant.
#'
#' See [https://www.paws-r-sdk.com/docs/connectparticipant_disconnect_participant/](https://www.paws-r-sdk.com/docs/connectparticipant_disconnect_participant/) for full documentation.
#'
#' @param ClientToken A unique, case-sensitive identifier that you provide to ensure the
#' idempotency of the request. If not provided, the Amazon Web Services SDK
#' populates this field. For more information about idempotency, see
#' [Making retries safe with idempotent
#' APIs](https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).
#' @param ConnectionToken &#91;required&#93; The authentication token associated with the participant's connection.
#'
#' @keywords internal
#'
#' @rdname connectparticipant_disconnect_participant
connectparticipant_disconnect_participant <- function(ClientToken = NULL, ConnectionToken) {
  op <- new_operation(
    name = "DisconnectParticipant",
    http_method = "POST",
    http_path = "/participant/disconnect",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .connectparticipant$disconnect_participant_input(ClientToken = ClientToken, ConnectionToken = ConnectionToken)
  output <- .connectparticipant$disconnect_participant_output()
  config <- get_config()
  svc <- .connectparticipant$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.connectparticipant$operations$disconnect_participant <- connectparticipant_disconnect_participant

#' Provides a pre-signed URL for download of a completed attachment
#'
#' @description
#' Provides a pre-signed URL for download of a completed attachment. This is an asynchronous API for use with active contacts.
#'
#' See [https://www.paws-r-sdk.com/docs/connectparticipant_get_attachment/](https://www.paws-r-sdk.com/docs/connectparticipant_get_attachment/) for full documentation.
#'
#' @param AttachmentId &#91;required&#93; A unique identifier for the attachment.
#' @param ConnectionToken &#91;required&#93; The authentication token associated with the participant's connection.
#' @param UrlExpiryInSeconds The expiration time of the URL in ISO timestamp. It's specified in ISO
#' 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
#' 2019-11-08T02:41:28.172Z.
#'
#' @keywords internal
#'
#' @rdname connectparticipant_get_attachment
connectparticipant_get_attachment <- function(AttachmentId, ConnectionToken, UrlExpiryInSeconds = NULL) {
  op <- new_operation(
    name = "GetAttachment",
    http_method = "POST",
    http_path = "/participant/attachment",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .connectparticipant$get_attachment_input(AttachmentId = AttachmentId, ConnectionToken = ConnectionToken, UrlExpiryInSeconds = UrlExpiryInSeconds)
  output <- .connectparticipant$get_attachment_output()
  config <- get_config()
  svc <- .connectparticipant$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.connectparticipant$operations$get_attachment <- connectparticipant_get_attachment

#' Retrieves the AuthenticationUrl for the current authentication session
#' for the AuthenticateCustomer flow block
#'
#' @description
#' Retrieves the AuthenticationUrl for the current authentication session for the AuthenticateCustomer flow block.
#'
#' See [https://www.paws-r-sdk.com/docs/connectparticipant_get_authentication_url/](https://www.paws-r-sdk.com/docs/connectparticipant_get_authentication_url/) for full documentation.
#'
#' @param SessionId &#91;required&#93; The sessionId provided in the authenticationInitiated event.
#' @param RedirectUri &#91;required&#93; The URL where the customer will be redirected after Amazon Cognito
#' authorizes the user.
#' @param ConnectionToken &#91;required&#93; The authentication token associated with the participant's connection.
#'
#' @keywords internal
#'
#' @rdname connectparticipant_get_authentication_url
connectparticipant_get_authentication_url <- function(SessionId, RedirectUri, ConnectionToken) {
  op <- new_operation(
    name = "GetAuthenticationUrl",
    http_method = "POST",
    http_path = "/participant/authentication-url",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .connectparticipant$get_authentication_url_input(SessionId = SessionId, RedirectUri = RedirectUri, ConnectionToken = ConnectionToken)
  output <- .connectparticipant$get_authentication_url_output()
  config <- get_config()
  svc <- .connectparticipant$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.connectparticipant$operations$get_authentication_url <- connectparticipant_get_authentication_url

#' Retrieves a transcript of the session, including details about any
#' attachments
#'
#' @description
#' Retrieves a transcript of the session, including details about any attachments. For information about accessing past chat contact transcripts for a persistent chat, see [Enable persistent chat](https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html).
#'
#' See [https://www.paws-r-sdk.com/docs/connectparticipant_get_transcript/](https://www.paws-r-sdk.com/docs/connectparticipant_get_transcript/) for full documentation.
#'
#' @param ContactId The contactId from the current contact chain for which transcript is
#' needed.
#' @param MaxResults The maximum number of results to return in the page. Default: 10.
#' @param NextToken The pagination token. Use the value returned previously in the next
#' subsequent request to retrieve the next set of results.
#' @param ScanDirection The direction from StartPosition from which to retrieve message.
#' Default: BACKWARD when no StartPosition is provided, FORWARD with
#' StartPosition.
#' @param SortOrder The sort order for the records. Default: DESCENDING.
#' @param StartPosition A filtering option for where to start.
#' @param ConnectionToken &#91;required&#93; The authentication token associated with the participant's connection.
#'
#' @keywords internal
#'
#' @rdname connectparticipant_get_transcript
connectparticipant_get_transcript <- function(ContactId = NULL, MaxResults = NULL, NextToken = NULL, ScanDirection = NULL, SortOrder = NULL, StartPosition = NULL, ConnectionToken) {
  op <- new_operation(
    name = "GetTranscript",
    http_method = "POST",
    http_path = "/participant/transcript",
    host_prefix = "",
    paginator = list(input_token = "NextToken", output_token = "NextToken", limit_key = "MaxResults"),
    stream_api = FALSE
  )
  input <- .connectparticipant$get_transcript_input(ContactId = ContactId, MaxResults = MaxResults, NextToken = NextToken, ScanDirection = ScanDirection, SortOrder = SortOrder, StartPosition = StartPosition, ConnectionToken = ConnectionToken)
  output <- .connectparticipant$get_transcript_output()
  config <- get_config()
  svc <- .connectparticipant$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.connectparticipant$operations$get_transcript <- connectparticipant_get_transcript

#' The application/vnd
#'
#' @description
#' The `application/vnd.amazonaws.connect.event.connection.acknowledged` ContentType will no longer be supported starting December 31, 2024. This event has been migrated to the [`create_participant_connection`][connectparticipant_create_participant_connection] API using the `ConnectParticipant` field.
#'
#' See [https://www.paws-r-sdk.com/docs/connectparticipant_send_event/](https://www.paws-r-sdk.com/docs/connectparticipant_send_event/) for full documentation.
#'
#' @param ContentType &#91;required&#93; The content type of the request. Supported types are:
#' 
#' -   application/vnd.amazonaws.connect.event.typing
#' 
#' -   application/vnd.amazonaws.connect.event.connection.acknowledged
#'     (will be deprecated on December 31, 2024)
#' 
#' -   application/vnd.amazonaws.connect.event.message.delivered
#' 
#' -   application/vnd.amazonaws.connect.event.message.read
#' @param Content The content of the event to be sent (for example, message text). For
#' content related to message receipts, this is supported in the form of a
#' JSON string.
#' 
#' Sample Content:
#' "\{\\"messageId\\":\\"11111111-aaaa-bbbb-cccc-EXAMPLE01234\\"\}"
#' @param ClientToken A unique, case-sensitive identifier that you provide to ensure the
#' idempotency of the request. If not provided, the Amazon Web Services SDK
#' populates this field. For more information about idempotency, see
#' [Making retries safe with idempotent
#' APIs](https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).
#' @param ConnectionToken &#91;required&#93; The authentication token associated with the participant's connection.
#'
#' @keywords internal
#'
#' @rdname connectparticipant_send_event
connectparticipant_send_event <- function(ContentType, Content = NULL, ClientToken = NULL, ConnectionToken) {
  op <- new_operation(
    name = "SendEvent",
    http_method = "POST",
    http_path = "/participant/event",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .connectparticipant$send_event_input(ContentType = ContentType, Content = Content, ClientToken = ClientToken, ConnectionToken = ConnectionToken)
  output <- .connectparticipant$send_event_output()
  config <- get_config()
  svc <- .connectparticipant$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.connectparticipant$operations$send_event <- connectparticipant_send_event

#' Sends a message
#'
#' @description
#' Sends a message.
#'
#' See [https://www.paws-r-sdk.com/docs/connectparticipant_send_message/](https://www.paws-r-sdk.com/docs/connectparticipant_send_message/) for full documentation.
#'
#' @param ContentType &#91;required&#93; The type of the content. Supported types are `text/plain`,
#' `text/markdown`, `application/json`, and
#' `application/vnd.amazonaws.connect.message.interactive.response`.
#' @param Content &#91;required&#93; The content of the message.
#' 
#' -   For `text/plain` and `text/markdown`, the Length Constraints are
#'     Minimum of 1, Maximum of 1024.
#' 
#' -   For `application/json`, the Length Constraints are Minimum of 1,
#'     Maximum of 12000.
#' 
#' -   For
#'     `application/vnd.amazonaws.connect.message.interactive.response`,
#'     the Length Constraints are Minimum of 1, Maximum of 12288.
#' @param ClientToken A unique, case-sensitive identifier that you provide to ensure the
#' idempotency of the request. If not provided, the Amazon Web Services SDK
#' populates this field. For more information about idempotency, see
#' [Making retries safe with idempotent
#' APIs](https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).
#' @param ConnectionToken &#91;required&#93; The authentication token associated with the connection.
#'
#' @keywords internal
#'
#' @rdname connectparticipant_send_message
connectparticipant_send_message <- function(ContentType, Content, ClientToken = NULL, ConnectionToken) {
  op <- new_operation(
    name = "SendMessage",
    http_method = "POST",
    http_path = "/participant/message",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .connectparticipant$send_message_input(ContentType = ContentType, Content = Content, ClientToken = ClientToken, ConnectionToken = ConnectionToken)
  output <- .connectparticipant$send_message_output()
  config <- get_config()
  svc <- .connectparticipant$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.connectparticipant$operations$send_message <- connectparticipant_send_message

#' Provides a pre-signed Amazon S3 URL in response for uploading the file
#' directly to S3
#'
#' @description
#' Provides a pre-signed Amazon S3 URL in response for uploading the file directly to S3.
#'
#' See [https://www.paws-r-sdk.com/docs/connectparticipant_start_attachment_upload/](https://www.paws-r-sdk.com/docs/connectparticipant_start_attachment_upload/) for full documentation.
#'
#' @param ContentType &#91;required&#93; Describes the MIME file type of the attachment. For a list of supported
#' file types, see [Feature
#' specifications](https://docs.aws.amazon.com/connect/latest/adminguide/feature-limits.html)
#' in the *Amazon Connect Administrator Guide*.
#' @param AttachmentSizeInBytes &#91;required&#93; The size of the attachment in bytes.
#' @param AttachmentName &#91;required&#93; A case-sensitive name of the attachment being uploaded.
#' @param ClientToken &#91;required&#93; A unique, case-sensitive identifier that you provide to ensure the
#' idempotency of the request. If not provided, the Amazon Web Services SDK
#' populates this field. For more information about idempotency, see
#' [Making retries safe with idempotent
#' APIs](https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).
#' @param ConnectionToken &#91;required&#93; The authentication token associated with the participant's connection.
#'
#' @keywords internal
#'
#' @rdname connectparticipant_start_attachment_upload
connectparticipant_start_attachment_upload <- function(ContentType, AttachmentSizeInBytes, AttachmentName, ClientToken, ConnectionToken) {
  op <- new_operation(
    name = "StartAttachmentUpload",
    http_method = "POST",
    http_path = "/participant/start-attachment-upload",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .connectparticipant$start_attachment_upload_input(ContentType = ContentType, AttachmentSizeInBytes = AttachmentSizeInBytes, AttachmentName = AttachmentName, ClientToken = ClientToken, ConnectionToken = ConnectionToken)
  output <- .connectparticipant$start_attachment_upload_output()
  config <- get_config()
  svc <- .connectparticipant$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.connectparticipant$operations$start_attachment_upload <- connectparticipant_start_attachment_upload
