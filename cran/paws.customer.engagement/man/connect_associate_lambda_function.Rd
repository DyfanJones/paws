% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_operations.R
\name{connect_associate_lambda_function}
\alias{connect_associate_lambda_function}
\title{This API is in preview release for Amazon Connect and is subject to
change}
\usage{
connect_associate_lambda_function(InstanceId, FunctionArn, ClientToken = NULL)
}
\arguments{
\item{InstanceId}{[required] The identifier of the Amazon Connect instance. You can \href{https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html}{find the instance ID}
in the Amazon Resource Name (ARN) of the instance.}

\item{FunctionArn}{[required] The Amazon Resource Name (ARN) for the Lambda function being associated.
Maximum number of characters allowed is 140.}

\item{ClientToken}{A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services SDK
populates this field. For more information about idempotency, see
\href{https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/}{Making retries safe with idempotent APIs}.}
}
\description{
This API is in preview release for Amazon Connect and is subject to change.

See \url{https://www.paws-r-sdk.com/docs/connect_associate_lambda_function/} for full documentation.
}
\keyword{internal}
