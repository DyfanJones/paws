% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lambda_operations.R
\name{lambda_invoke_async}
\alias{lambda_invoke_async}
\title{For asynchronous function invocation, use Invoke}
\usage{
lambda_invoke_async(FunctionName, InvokeArgs)
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

\item{InvokeArgs}{[required] The JSON that you want to provide to your Lambda function as input.}
}
\description{
For asynchronous function invocation, use \code{\link[=lambda_invoke]{invoke}}.

See \url{https://www.paws-r-sdk.com/docs/lambda_invoke_async/} for full documentation.
}
\keyword{internal}
