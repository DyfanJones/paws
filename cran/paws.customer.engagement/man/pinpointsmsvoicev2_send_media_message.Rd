% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpointsmsvoicev2_operations.R
\name{pinpointsmsvoicev2_send_media_message}
\alias{pinpointsmsvoicev2_send_media_message}
\title{Creates a new multimedia message (MMS) and sends it to a recipient's
phone number}
\usage{
pinpointsmsvoicev2_send_media_message(
  DestinationPhoneNumber,
  OriginationIdentity,
  MessageBody = NULL,
  MediaUrls = NULL,
  ConfigurationSetName = NULL,
  MaxPrice = NULL,
  TimeToLive = NULL,
  Context = NULL,
  DryRun = NULL,
  ProtectConfigurationId = NULL,
  MessageFeedbackEnabled = NULL
)
}
\arguments{
\item{DestinationPhoneNumber}{[required] The destination phone number in E.164 format.}

\item{OriginationIdentity}{[required] The origination identity of the message. This can be either the
PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn,
PoolId, or PoolArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).}

\item{MessageBody}{The text body of the message.}

\item{MediaUrls}{An array of URLs to each media file to send.

The media files have to be stored in an S3 bucket. Supported media file
formats are listed in \href{https://docs.aws.amazon.com/sms-voice/latest/userguide/mms-limitations-character.html}{MMS file types, size and character limits}.
For more information on creating an S3 bucket and managing objects, see
\href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/create-bucket-overview.html}{Creating a bucket},
\href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/upload-objects.html}{Uploading objects}
in the \emph{Amazon S3 User Guide}, and \href{https://docs.aws.amazon.com/sms-voice/latest/userguide/send-mms-message.html#send-mms-message-bucket}{Setting up an Amazon S3 bucket for MMS files}
in the \emph{Amazon Web Services End User Messaging SMS User Guide}.}

\item{ConfigurationSetName}{The name of the configuration set to use. This can be either the
ConfigurationSetName or ConfigurationSetArn.}

\item{MaxPrice}{The maximum amount that you want to spend, in US dollars, per each MMS
message.}

\item{TimeToLive}{How long the media message is valid for. By default this is 72 hours.}

\item{Context}{You can specify custom data in this field. If you do, that data is
logged to the event destination.}

\item{DryRun}{When set to true, the message is checked and validated, but isn't sent
to the end recipient.}

\item{ProtectConfigurationId}{The unique identifier of the protect configuration to use.}

\item{MessageFeedbackEnabled}{Set to true to enable message feedback for the message. When a user
receives the message you need to update the message status using
\code{\link[=pinpointsmsvoicev2_put_message_feedback]{put_message_feedback}}.}
}
\description{
Creates a new multimedia message (MMS) and sends it to a recipient's phone number.

See \url{https://www.paws-r-sdk.com/docs/pinpointsmsvoicev2_send_media_message/} for full documentation.
}
\keyword{internal}
