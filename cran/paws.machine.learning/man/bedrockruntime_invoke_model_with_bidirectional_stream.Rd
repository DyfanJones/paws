% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bedrockruntime_operations.R
\name{bedrockruntime_invoke_model_with_bidirectional_stream}
\alias{bedrockruntime_invoke_model_with_bidirectional_stream}
\title{Invoke the specified Amazon Bedrock model to run inference using the
bidirectional stream}
\usage{
bedrockruntime_invoke_model_with_bidirectional_stream(modelId, body)
}
\arguments{
\item{modelId}{[required] The model ID or ARN of the model ID to use. Currently, only
\code{amazon.nova-sonic-v1:0} is supported.}

\item{body}{[required] The prompt and inference parameters in the format specified in the
\code{BidirectionalInputPayloadPart} in the header. You must provide the body
in JSON format. To see the format and content of the request and
response bodies for different models, refer to \href{https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html}{Inference parameters}.
For more information, see \href{https://docs.aws.amazon.com/bedrock/latest/userguide/inference.html}{Run inference}
in the Bedrock User Guide.}
}
\description{
Invoke the specified Amazon Bedrock model to run inference using the bidirectional stream. The response is returned in a stream that remains open for 8 minutes. A single session can contain multiple prompts and responses from the model. The prompts to the model are provided as audio files and the model's responses are spoken back to the user and transcribed.

See \url{https://www.paws-r-sdk.com/docs/bedrockruntime_invoke_model_with_bidirectional_stream/} for full documentation.
}
\keyword{internal}
