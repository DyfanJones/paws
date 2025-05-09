% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_operations.R
\name{connect_send_chat_integration_event}
\alias{connect_send_chat_integration_event}
\title{Processes chat integration events from Amazon Web Services or external
integrations to Amazon Connect}
\usage{
connect_send_chat_integration_event(
  SourceId,
  DestinationId,
  Subtype = NULL,
  Event,
  NewSessionDetails = NULL
)
}
\arguments{
\item{SourceId}{[required] External identifier of chat customer participant, used in part to
uniquely identify a chat. For SMS, this is the E164 phone number of the
chat customer participant.}

\item{DestinationId}{[required] Chat system identifier, used in part to uniquely identify chat. This is
associated with the Amazon Connect instance and flow to be used to start
chats. For Server Migration Service, this is the phone number
destination of inbound Server Migration Service messages represented by
an Amazon Web Services End User Messaging phone number ARN.}

\item{Subtype}{Classification of a channel. This is used in part to uniquely identify
chat.

Valid value: \verb{["connect:sms", connect:"WhatsApp"]}}

\item{Event}{[required] Chat integration event payload}

\item{NewSessionDetails}{Contact properties to apply when starting a new chat. If the integration
event is handled with an existing chat, this is ignored.}
}
\description{
Processes chat integration events from Amazon Web Services or external integrations to Amazon Connect. A chat integration event includes:

See \url{https://www.paws-r-sdk.com/docs/connect_send_chat_integration_event/} for full documentation.
}
\keyword{internal}
