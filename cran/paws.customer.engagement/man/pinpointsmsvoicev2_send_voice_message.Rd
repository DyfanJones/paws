% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpointsmsvoicev2_operations.R
\name{pinpointsmsvoicev2_send_voice_message}
\alias{pinpointsmsvoicev2_send_voice_message}
\title{Allows you to send a request that sends a voice message}
\usage{
pinpointsmsvoicev2_send_voice_message(
  DestinationPhoneNumber,
  OriginationIdentity,
  MessageBody = NULL,
  MessageBodyTextType = NULL,
  VoiceId = NULL,
  ConfigurationSetName = NULL,
  MaxPricePerMinute = NULL,
  TimeToLive = NULL,
  Context = NULL,
  DryRun = NULL,
  ProtectConfigurationId = NULL,
  MessageFeedbackEnabled = NULL
)
}
\arguments{
\item{DestinationPhoneNumber}{[required] The destination phone number in E.164 format.}

\item{OriginationIdentity}{[required] The origination identity to use for the voice call. This can be the
PhoneNumber, PhoneNumberId, PhoneNumberArn, PoolId, or PoolArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).}

\item{MessageBody}{The text to convert to a voice message.}

\item{MessageBodyTextType}{Specifies if the MessageBody field contains text or \href{https://docs.aws.amazon.com/polly/latest/dg/what-is.html}{speech synthesis markup language (SSML)}.
\itemize{
\item TEXT: This is the default value. When used the maximum character
limit is 3000.
\item SSML: When used the maximum character limit is 6000 including SSML
tagging.
}}

\item{VoiceId}{The voice for the \href{https://docs.aws.amazon.com/polly/latest/dg/what-is.html}{Amazon Polly} service
to use. By default this is set to "MATTHEW".}

\item{ConfigurationSetName}{The name of the configuration set to use. This can be either the
ConfigurationSetName or ConfigurationSetArn.}

\item{MaxPricePerMinute}{The maximum amount to spend per voice message, in US dollars.}

\item{TimeToLive}{How long the voice message is valid for. By default this is 72 hours.}

\item{Context}{You can specify custom data in this field. If you do, that data is
logged to the event destination.}

\item{DryRun}{When set to true, the message is checked and validated, but isn't sent
to the end recipient.}

\item{ProtectConfigurationId}{The unique identifier for the protect configuration.}

\item{MessageFeedbackEnabled}{Set to true to enable message feedback for the message. When a user
receives the message you need to update the message status using
\code{\link[=pinpointsmsvoicev2_put_message_feedback]{put_message_feedback}}.}
}
\description{
Allows you to send a request that sends a voice message. This operation uses \href{https://aws.amazon.com/polly/}{Amazon Polly} to convert a text script into a voice message.

See \url{https://www.paws-r-sdk.com/docs/pinpointsmsvoicev2_send_voice_message/} for full documentation.
}
\keyword{internal}
