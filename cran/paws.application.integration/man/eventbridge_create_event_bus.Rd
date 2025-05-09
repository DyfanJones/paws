% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eventbridge_operations.R
\name{eventbridge_create_event_bus}
\alias{eventbridge_create_event_bus}
\title{Creates a new event bus within your account}
\usage{
eventbridge_create_event_bus(
  Name,
  EventSourceName = NULL,
  Description = NULL,
  KmsKeyIdentifier = NULL,
  DeadLetterConfig = NULL,
  Tags = NULL
)
}
\arguments{
\item{Name}{[required] The name of the new event bus.

Custom event bus names can't contain the \code{/} character, but you can use
the \code{/} character in partner event bus names. In addition, for partner
event buses, the name must exactly match the name of the partner event
source that this event bus is matched to.

You can't use the name \code{default} for a custom event bus, as this name is
already used for your account's default event bus.}

\item{EventSourceName}{If you are creating a partner event bus, this specifies the partner
event source that the new event bus will be matched with.}

\item{Description}{The event bus description.}

\item{KmsKeyIdentifier}{The identifier of the KMS customer managed key for EventBridge to use,
if you choose to use a customer managed key to encrypt events on this
event bus. The identifier can be the key Amazon Resource Name (ARN),
KeyId, key alias, or key alias ARN.

If you do not specify a customer managed key identifier, EventBridge
uses an Amazon Web Services owned key to encrypt events on the event
bus.

For more information, see \href{https://docs.aws.amazon.com/kms/latest/developerguide/}{Managing keys} in the
\emph{Key Management Service Developer Guide}.

Archives and schema discovery are not supported for event buses
encrypted using a customer managed key. EventBridge returns an error if:
\itemize{
\item You call \code{\link[=eventbridge_create_archive]{create_archive}} on an event
bus set to use a customer managed key for encryption.
\item You call \code{CreateDiscoverer} on an event bus set to use a customer
managed key for encryption.
\item You call \code{UpdatedEventBus} to set a customer managed key on an
event bus with an archives or schema discovery enabled.
}

To enable archives or schema discovery on an event bus, choose to use an
Amazon Web Services owned key. For more information, see \href{https://docs.aws.amazon.com/eventbridge/latest/userguide/}{Data encryption in EventBridge}
in the \emph{Amazon EventBridge User Guide}.}

\item{DeadLetterConfig}{}

\item{Tags}{Tags to associate with the event bus.}
}
\description{
Creates a new event bus within your account. This can be a custom event bus which you can use to receive events from your custom applications and services, or it can be a partner event bus which can be matched to a partner event source.

See \url{https://www.paws-r-sdk.com/docs/eventbridge_create_event_bus/} for full documentation.
}
\keyword{internal}
