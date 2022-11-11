% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/locationservice_operations.R
\name{locationservice_create_geofence_collection}
\alias{locationservice_create_geofence_collection}
\title{Creates a geofence collection, which manages and stores geofences}
\usage{
locationservice_create_geofence_collection(
  CollectionName,
  Description = NULL,
  KmsKeyId = NULL,
  PricingPlan = NULL,
  PricingPlanDataSource = NULL,
  Tags = NULL
)
}
\arguments{
\item{CollectionName}{[required] A custom name for the geofence collection.

Requirements:
\itemize{
\item Contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens (-),
periods (.), and underscores (_).
\item Must be a unique geofence collection name.
\item No spaces allowed. For example, \code{ExampleGeofenceCollection}.
}}

\item{Description}{An optional description for the geofence collection.}

\item{KmsKeyId}{A key identifier for an \href{https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html}{AWS KMS customer managed key}.
Enter a key ID, key ARN, alias name, or alias ARN.}

\item{PricingPlan}{No longer used. If included, the only allowed value is
\code{RequestBasedUsage}.}

\item{PricingPlanDataSource}{This parameter is no longer used.}

\item{Tags}{Applies one or more tags to the geofence collection. A tag is a
key-value pair helps manage, identify, search, and filter your resources
by labelling them.

Format: \code{"key" : "value"}

Restrictions:
\itemize{
\item Maximum 50 tags per resource
\item Each resource tag must be unique with a maximum of one value.
\item Maximum key length: 128 Unicode characters in UTF-8
\item Maximum value length: 256 Unicode characters in UTF-8
\item Can use alphanumeric characters (A–Z, a–z, 0–9), and the following
characters: + - = . _ : / @.
\item Cannot use "aws:" as a prefix for a key.
}}
}
\description{
Creates a geofence collection, which manages and stores geofences.

See \url{https://paws-r.github.io/docs/locationservice/create_geofence_collection.html} for full documentation.
}
\keyword{internal}