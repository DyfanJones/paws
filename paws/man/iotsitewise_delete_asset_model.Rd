% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotsitewise_operations.R
\name{iotsitewise_delete_asset_model}
\alias{iotsitewise_delete_asset_model}
\title{Deletes an asset model}
\usage{
iotsitewise_delete_asset_model(assetModelId, clientToken)
}
\arguments{
\item{assetModelId}{[required] The ID of the asset model to delete.}

\item{clientToken}{A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don\'t reuse this client token if a new
idempotent request is required.}
}
\description{
Deletes an asset model. This action can\'t be undone. You must delete
all assets created from an asset model before you can delete the model.
Also, you can\'t delete an asset model if a parent asset model exists
that contains a property formula expression that depends on the asset
model that you want to delete. For more information, see \href{https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html}{Deleting Assets and Models}
in the \emph{AWS IoT SiteWise User Guide}.
}
\section{Request syntax}{
\preformatted{svc$delete_asset_model(
  assetModelId = "string",
  clientToken = "string"
)
}
}

\keyword{internal}
