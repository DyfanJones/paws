% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_create_user_defined_function}
\alias{glue_create_user_defined_function}
\title{Creates a new function definition in the Data Catalog}
\usage{
glue_create_user_defined_function(CatalogId, DatabaseName,
  FunctionInput)
}
\arguments{
\item{CatalogId}{The ID of the Data Catalog in which to create the function. If none is
supplied, the AWS account ID is used by default.}

\item{DatabaseName}{[required] The name of the catalog database in which to create the function.}

\item{FunctionInput}{[required] A \code{FunctionInput} object that defines the function to create in the Data
Catalog.}
}
\description{
Creates a new function definition in the Data Catalog.
}
\section{Request syntax}{
\preformatted{svc$create_user_defined_function(
  CatalogId = "string",
  DatabaseName = "string",
  FunctionInput = list(
    FunctionName = "string",
    ClassName = "string",
    OwnerName = "string",
    OwnerType = "USER"|"ROLE"|"GROUP",
    ResourceUris = list(
      list(
        ResourceType = "JAR"|"FILE"|"ARCHIVE",
        Uri = "string"
      )
    )
  )
)
}
}

\keyword{internal}