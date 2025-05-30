% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/servicecatalog_operations.R
\name{servicecatalog_search_provisioned_products}
\alias{servicecatalog_search_provisioned_products}
\title{Gets information about the provisioned products that meet the specified
criteria}
\usage{
servicecatalog_search_provisioned_products(
  AcceptLanguage = NULL,
  AccessLevelFilter = NULL,
  Filters = NULL,
  SortBy = NULL,
  SortOrder = NULL,
  PageSize = NULL,
  PageToken = NULL
)
}
\arguments{
\item{AcceptLanguage}{The language code.
\itemize{
\item \code{jp} - Japanese
\item \code{zh} - Chinese
}}

\item{AccessLevelFilter}{The access level to use to obtain results. The default is \code{Account}.}

\item{Filters}{The search filters.

When the key is \code{SearchQuery}, the searchable fields are \code{arn},
\code{createdTime}, \code{id}, \code{lastRecordId}, \code{idempotencyToken}, \code{name},
\code{physicalId}, \code{productId}, \code{provisioningArtifactId}, \code{type}, \code{status},
\code{tags}, \code{userArn}, \code{userArnSession}, \code{lastProvisioningRecordId},
\code{lastSuccessfulProvisioningRecordId}, \code{productName}, and
\code{provisioningArtifactName}.

Example: \verb{"SearchQuery":["status:AVAILABLE"]}}

\item{SortBy}{The sort field. If no value is specified, the results are not sorted.
The valid values are \code{arn}, \code{id}, \code{name}, and \code{lastRecordId}.}

\item{SortOrder}{The sort order. If no value is specified, the results are not sorted.}

\item{PageSize}{The maximum number of items to return with this call.}

\item{PageToken}{The page token for the next set of results. To retrieve the first set of
results, use null.}
}
\description{
Gets information about the provisioned products that meet the specified criteria.

See \url{https://www.paws-r-sdk.com/docs/servicecatalog_search_provisioned_products/} for full documentation.
}
\keyword{internal}
