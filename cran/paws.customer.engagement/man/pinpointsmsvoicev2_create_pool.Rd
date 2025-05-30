% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpointsmsvoicev2_operations.R
\name{pinpointsmsvoicev2_create_pool}
\alias{pinpointsmsvoicev2_create_pool}
\title{Creates a new pool and associates the specified origination identity to
the pool}
\usage{
pinpointsmsvoicev2_create_pool(
  OriginationIdentity,
  IsoCountryCode,
  MessageType,
  DeletionProtectionEnabled = NULL,
  Tags = NULL,
  ClientToken = NULL
)
}
\arguments{
\item{OriginationIdentity}{[required] The origination identity to use such as a PhoneNumberId, PhoneNumberArn,
SenderId or SenderIdArn. You can use
\code{\link[=pinpointsmsvoicev2_describe_phone_numbers]{describe_phone_numbers}} to
find the values for PhoneNumberId and PhoneNumberArn while
\code{\link[=pinpointsmsvoicev2_describe_sender_ids]{describe_sender_ids}} can be
used to get the values for SenderId and SenderIdArn.

After the pool is created you can add more origination identities to the
pool by using
\code{\link[=pinpointsmsvoicev2_associate_origination_identity]{associate_origination_identity}}.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).}

\item{IsoCountryCode}{[required] The new two-character code, in ISO 3166-1 alpha-2 format, for the
country or region of the new pool.}

\item{MessageType}{[required] The type of message. Valid values are TRANSACTIONAL for messages that
are critical or time-sensitive and PROMOTIONAL for messages that aren't
critical or time-sensitive. After the pool is created the MessageType
can't be changed.}

\item{DeletionProtectionEnabled}{By default this is set to false. When set to true the pool can't be
deleted. You can change this value using the
\code{\link[=pinpointsmsvoicev2_update_pool]{update_pool}} action.}

\item{Tags}{An array of tags (key and value pairs) associated with the pool.}

\item{ClientToken}{Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don't specify a client token, a
randomly generated token is used for the request to ensure idempotency.}
}
\description{
Creates a new pool and associates the specified origination identity to the pool. A pool can include one or more phone numbers and SenderIds that are associated with your Amazon Web Services account.

See \url{https://www.paws-r-sdk.com/docs/pinpointsmsvoicev2_create_pool/} for full documentation.
}
\keyword{internal}
