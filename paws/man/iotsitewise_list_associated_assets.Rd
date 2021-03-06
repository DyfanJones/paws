% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotsitewise_operations.R
\name{iotsitewise_list_associated_assets}
\alias{iotsitewise_list_associated_assets}
\title{Retrieves a paginated list of the assets associated to a parent asset
(assetId) by a given hierarchy (hierarchyId)}
\usage{
iotsitewise_list_associated_assets(assetId, hierarchyId, nextToken,
  maxResults)
}
\arguments{
\item{assetId}{[required] The ID of the parent asset.}

\item{hierarchyId}{[required] The hierarchy ID (of the parent asset model) whose associated assets are
returned. To find a hierarchy ID, use the
\href{https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAsset.html}{DescribeAsset}
or
\href{https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModel.html}{DescribeAssetModel}
actions.

For more information, see \href{https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html}{Asset Hierarchies}
in the \emph{AWS IoT SiteWise User Guide}.}

\item{nextToken}{The token to be used for the next set of paginated results.}

\item{maxResults}{The maximum number of results to be returned per paginated request.}
}
\description{
Retrieves a paginated list of the assets associated to a parent asset
(\code{assetId}) by a given hierarchy (\code{hierarchyId}).
}
\section{Request syntax}{
\preformatted{svc$list_associated_assets(
  assetId = "string",
  hierarchyId = "string",
  nextToken = "string",
  maxResults = 123
)
}
}

\keyword{internal}
