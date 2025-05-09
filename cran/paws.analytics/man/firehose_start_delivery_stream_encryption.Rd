% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/firehose_operations.R
\name{firehose_start_delivery_stream_encryption}
\alias{firehose_start_delivery_stream_encryption}
\title{Enables server-side encryption (SSE) for the Firehose stream}
\usage{
firehose_start_delivery_stream_encryption(
  DeliveryStreamName,
  DeliveryStreamEncryptionConfigurationInput = NULL
)
}
\arguments{
\item{DeliveryStreamName}{[required] The name of the Firehose stream for which you want to enable server-side
encryption (SSE).}

\item{DeliveryStreamEncryptionConfigurationInput}{Used to specify the type and Amazon Resource Name (ARN) of the KMS key
needed for Server-Side Encryption (SSE).}
}
\description{
Enables server-side encryption (SSE) for the Firehose stream.

See \url{https://www.paws-r-sdk.com/docs/firehose_start_delivery_stream_encryption/} for full documentation.
}
\keyword{internal}
