% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lambda_operations.R
\name{lambda_update_function_code}
\alias{lambda_update_function_code}
\title{Updates a Lambda function's code}
\usage{
lambda_update_function_code(
  FunctionName,
  ZipFile = NULL,
  S3Bucket = NULL,
  S3Key = NULL,
  S3ObjectVersion = NULL,
  ImageUri = NULL,
  Publish = NULL,
  DryRun = NULL,
  RevisionId = NULL,
  Architectures = NULL,
  SourceKMSKeyArn = NULL
)
}
\arguments{
\item{FunctionName}{[required] The name or ARN of the Lambda function.

\strong{Name formats}
\itemize{
\item \strong{Function name} – \verb{my-function}.
\item \strong{Function ARN} –
\verb{arn:aws:lambda:us-west-2:123456789012:function:my-function}.
\item \strong{Partial ARN} – \verb{123456789012:function:my-function}.
}

The length constraint applies only to the full ARN. If you specify only
the function name, it is limited to 64 characters in length.}

\item{ZipFile}{The base64-encoded contents of the deployment package. Amazon Web
Services SDK and CLI clients handle the encoding for you. Use only with
a function defined with a .zip file archive deployment package.}

\item{S3Bucket}{An Amazon S3 bucket in the same Amazon Web Services Region as your
function. The bucket can be in a different Amazon Web Services account.
Use only with a function defined with a .zip file archive deployment
package.}

\item{S3Key}{The Amazon S3 key of the deployment package. Use only with a function
defined with a .zip file archive deployment package.}

\item{S3ObjectVersion}{For versioned objects, the version of the deployment package object to
use.}

\item{ImageUri}{URI of a container image in the Amazon ECR registry. Do not use for a
function defined with a .zip file archive.}

\item{Publish}{Set to true to publish a new version of the function after updating the
code. This has the same effect as calling
\code{\link[=lambda_publish_version]{publish_version}} separately.}

\item{DryRun}{Set to true to validate the request parameters and access permissions
without modifying the function code.}

\item{RevisionId}{Update the function only if the revision ID matches the ID that's
specified. Use this option to avoid modifying a function that has
changed since you last read it.}

\item{Architectures}{The instruction set architecture that the function supports. Enter a
string array with one of the valid values (arm64 or x86_64). The default
value is \code{x86_64}.}

\item{SourceKMSKeyArn}{The ARN of the Key Management Service (KMS) customer managed key that's
used to encrypt your function's .zip deployment package. If you don't
provide a customer managed key, Lambda uses an Amazon Web Services
managed key.}
}
\description{
Updates a Lambda function's code. If code signing is enabled for the function, the code package must be signed by a trusted publisher. For more information, see \href{https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html}{Configuring code signing for Lambda}.

See \url{https://www.paws-r-sdk.com/docs/lambda_update_function_code/} for full documentation.
}
\keyword{internal}
