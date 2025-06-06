% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wafv2_operations.R
\name{wafv2_list_logging_configurations}
\alias{wafv2_list_logging_configurations}
\title{Retrieves an array of your LoggingConfiguration objects}
\usage{
wafv2_list_logging_configurations(
  Scope,
  NextMarker = NULL,
  Limit = NULL,
  LogScope = NULL
)
}
\arguments{
\item{Scope}{[required] Specifies whether this is for a global resource type, such as a Amazon
CloudFront distribution. For an Amplify application, use \code{CLOUDFRONT}.

To work with CloudFront, you must also specify the Region US East (N.
Virginia) as follows:
\itemize{
\item CLI - Specify the Region when you use the CloudFront scope:
\code{--scope=CLOUDFRONT --region=us-east-1}.
\item API and SDKs - For all calls, use the Region endpoint us-east-1.
}}

\item{NextMarker}{When you request a list of objects with a \code{Limit} setting, if the number
of objects that are still available for retrieval exceeds the limit, WAF
returns a \code{NextMarker} value in the response. To retrieve the next batch
of objects, provide the marker from the prior call in your next request.}

\item{Limit}{The maximum number of objects that you want WAF to return for this
request. If more objects are available, in the response, WAF provides a
\code{NextMarker} value that you can use in a subsequent call to get the next
batch of objects.}

\item{LogScope}{The owner of the logging configuration, which must be set to \code{CUSTOMER}
for the configurations that you manage.

The log scope \code{SECURITY_LAKE} indicates a configuration that is managed
through Amazon Security Lake. You can use Security Lake to collect log
and event data from various sources for normalization, analysis, and
management. For information, see \href{https://docs.aws.amazon.com/security-lake/latest/userguide/internal-sources.html}{Collecting data from Amazon Web Services services}
in the \emph{Amazon Security Lake user guide}.

Default: \code{CUSTOMER}}
}
\description{
Retrieves an array of your LoggingConfiguration objects.

See \url{https://www.paws-r-sdk.com/docs/wafv2_list_logging_configurations/} for full documentation.
}
\keyword{internal}
