% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.R
\name{bedrockruntime}
\alias{bedrockruntime}
\title{Amazon Bedrock Runtime}
\usage{
bedrockruntime(
  config = list(),
  credentials = list(),
  endpoint = NULL,
  region = NULL
)
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.
\itemize{
\item{\strong{credentials}: \itemize{
\item{\strong{creds}: \itemize{
\item{\strong{access_key_id}: AWS access key ID}
\item{\strong{secret_access_key}: AWS secret access key}
\item{\strong{session_token}: AWS temporary session token}
}}
\item{\strong{profile}: The name of a profile to use. If not given, then the default profile is used.}
\item{\strong{anonymous}: Set anonymous credentials.}
}}
\item{\strong{endpoint}: The complete URL to use for the constructed client.}
\item{\strong{region}: The AWS Region used in instantiating the client.}
\item{\strong{close_connection}: Immediately close all HTTP connections.}
\item{\strong{timeout}: The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
\item{\strong{s3_force_path_style}: Set this to \code{true} to force the request to use path-style addressing, i.e. \verb{http://s3.amazonaws.com/BUCKET/KEY}.}
\item{\strong{sts_regional_endpoint}: Set sts regional endpoint resolver to regional or legacy \url{https://docs.aws.amazon.com/sdkref/latest/guide/feature-sts-regionalized-endpoints.html}}
}}

\item{credentials}{Optional credentials shorthand for the config parameter
\itemize{
\item{\strong{creds}: \itemize{
\item{\strong{access_key_id}: AWS access key ID}
\item{\strong{secret_access_key}: AWS secret access key}
\item{\strong{session_token}: AWS temporary session token}
}}
\item{\strong{profile}: The name of a profile to use. If not given, then the default profile is used.}
\item{\strong{anonymous}: Set anonymous credentials.}
}}

\item{endpoint}{Optional shorthand for complete URL to use for the constructed client.}

\item{region}{Optional shorthand for AWS Region used in instantiating the client.}
}
\value{
A client for the service. You can call the service's operations using
syntax like \code{svc$operation(...)}, where \code{svc} is the name you've assigned
to the client. The available operations are listed in the
Operations section.
}
\description{
Describes the API operations for running inference using Amazon Bedrock
models.
}
\section{Service syntax}{


\if{html}{\out{<div class="sourceCode">}}\preformatted{svc <- bedrockruntime(
  config = list(
    credentials = list(
      creds = list(
        access_key_id = "string",
        secret_access_key = "string",
        session_token = "string"
      ),
      profile = "string",
      anonymous = "logical"
    ),
    endpoint = "string",
    region = "string",
    close_connection = "logical",
    timeout = "numeric",
    s3_force_path_style = "logical",
    sts_regional_endpoint = "string"
  ),
  credentials = list(
    creds = list(
      access_key_id = "string",
      secret_access_key = "string",
      session_token = "string"
    ),
    profile = "string",
    anonymous = "logical"
  ),
  endpoint = "string",
  region = "string"
)
}\if{html}{\out{</div>}}
}

\section{Operations}{

\tabular{ll}{
\link[paws.machine.learning:bedrockruntime_apply_guardrail]{apply_guardrail} \tab The action to apply a guardrail\cr
\link[paws.machine.learning:bedrockruntime_converse]{converse} \tab Sends messages to the specified Amazon Bedrock model\cr
\link[paws.machine.learning:bedrockruntime_converse_stream]{converse_stream} \tab Sends messages to the specified Amazon Bedrock model and returns the response in a stream\cr
\link[paws.machine.learning:bedrockruntime_get_async_invoke]{get_async_invoke} \tab Retrieve information about an asynchronous invocation\cr
\link[paws.machine.learning:bedrockruntime_invoke_model]{invoke_model} \tab Invokes the specified Amazon Bedrock model to run inference using the prompt and inference parameters provided in the request body\cr
\link[paws.machine.learning:bedrockruntime_invoke_model_with_bidirectional_stream]{invoke_model_with_bidirectional_stream} \tab Invoke the specified Amazon Bedrock model to run inference using the bidirectional stream\cr
\link[paws.machine.learning:bedrockruntime_invoke_model_with_response_stream]{invoke_model_with_response_stream} \tab Invoke the specified Amazon Bedrock model to run inference using the prompt and inference parameters provided in the request body\cr
\link[paws.machine.learning:bedrockruntime_list_async_invokes]{list_async_invokes} \tab Lists asynchronous invocations\cr
\link[paws.machine.learning:bedrockruntime_start_async_invoke]{start_async_invoke} \tab Starts an asynchronous invocation
}
}

\examples{
\dontrun{
svc <- bedrockruntime()
svc$apply_guardrail(
  Foo = 123
)
}

}
