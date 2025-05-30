% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opensearchserviceserverless_operations.R
\name{opensearchserviceserverless_delete_access_policy}
\alias{opensearchserviceserverless_delete_access_policy}
\title{Deletes an OpenSearch Serverless access policy}
\usage{
opensearchserviceserverless_delete_access_policy(
  type,
  name,
  clientToken = NULL
)
}
\arguments{
\item{type}{[required] The type of policy.}

\item{name}{[required] The name of the policy to delete.}

\item{clientToken}{Unique, case-sensitive identifier to ensure idempotency of the request.}
}
\description{
Deletes an OpenSearch Serverless access policy. For more information, see \href{https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html}{Data access control for Amazon OpenSearch Serverless}.

See \url{https://www.paws-r-sdk.com/docs/opensearchserviceserverless_delete_access_policy/} for full documentation.
}
\keyword{internal}
