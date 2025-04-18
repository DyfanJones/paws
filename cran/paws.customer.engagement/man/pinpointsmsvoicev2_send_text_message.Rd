% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpointsmsvoicev2_operations.R
\name{pinpointsmsvoicev2_send_text_message}
\alias{pinpointsmsvoicev2_send_text_message}
\title{Creates a new text message and sends it to a recipient's phone number}
\usage{
pinpointsmsvoicev2_send_text_message(
  DestinationPhoneNumber,
  OriginationIdentity = NULL,
  MessageBody = NULL,
  MessageType = NULL,
  Keyword = NULL,
  ConfigurationSetName = NULL,
  MaxPrice = NULL,
  TimeToLive = NULL,
  Context = NULL,
  DestinationCountryParameters = NULL,
  DryRun = NULL,
  ProtectConfigurationId = NULL,
  MessageFeedbackEnabled = NULL
)
}
\arguments{
\item{DestinationPhoneNumber}{[required] The destination phone number in E.164 format.}

\item{OriginationIdentity}{The origination identity of the message. This can be either the
PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn,
PoolId, or PoolArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).}

\item{MessageBody}{The body of the text message.}

\item{MessageType}{The type of message. Valid values are for messages that are critical or
time-sensitive and PROMOTIONAL for messages that aren't critical or
time-sensitive.}

\item{Keyword}{When you register a short code in the US, you must specify a program
name. If you don’t have a US short code, omit this attribute.}

\item{ConfigurationSetName}{The name of the configuration set to use. This can be either the
ConfigurationSetName or ConfigurationSetArn.}

\item{MaxPrice}{The maximum amount that you want to spend, in US dollars, per each text
message. If the calculated amount to send the text message is greater
than \code{MaxPrice}, the message is not sent and an error is returned.}

\item{TimeToLive}{How long the text message is valid for, in seconds. By default this is
72 hours. If the messages isn't handed off before the TTL expires we
stop attempting to hand off the message and return \code{TTL_EXPIRED} event.}

\item{Context}{You can specify custom data in this field. If you do, that data is
logged to the event destination.}

\item{DestinationCountryParameters}{This field is used for any country-specific registration requirements.
Currently, this setting is only used when you send messages to
recipients in India using a sender ID. For more information see \href{https://docs.aws.amazon.com/sms-voice/latest/userguide/registrations-sms-senderid-india.html}{Special requirements for sending SMS messages to recipients in India}.
\itemize{
\item \code{IN_ENTITY_ID} The entity ID or Principal Entity (PE) ID that you
received after completing the sender ID registration process.
\item \code{IN_TEMPLATE_ID} The template ID that you received after completing
the sender ID registration process.

Make sure that the Template ID that you specify matches your message
template exactly. If your message doesn't match the template that
you provided during the registration process, the mobile carriers
might reject your message.
}}

\item{DryRun}{When set to true, the message is checked and validated, but isn't sent
to the end recipient. You are not charged for using \code{DryRun}.

The Message Parts per Second (MPS) limit when using \code{DryRun} is five. If
your origination identity has a lower MPS limit then the lower MPS limit
is used. For more information about MPS limits, see \href{https://docs.aws.amazon.com/sms-voice/latest/userguide/sms-limitations-mps.html}{Message Parts per Second (MPS) limits}
in the \emph{AWS End User Messaging SMS User Guide}..}

\item{ProtectConfigurationId}{The unique identifier for the protect configuration.}

\item{MessageFeedbackEnabled}{Set to true to enable message feedback for the message. When a user
receives the message you need to update the message status using
\code{\link[=pinpointsmsvoicev2_put_message_feedback]{put_message_feedback}}.}
}
\description{
Creates a new text message and sends it to a recipient's phone number. SendTextMessage only sends an SMS message to one recipient each time it is invoked.

See \url{https://www.paws-r-sdk.com/docs/pinpointsmsvoicev2_send_text_message/} for full documentation.
}
\keyword{internal}
