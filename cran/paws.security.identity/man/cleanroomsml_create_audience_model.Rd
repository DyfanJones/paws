% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cleanroomsml_operations.R
\name{cleanroomsml_create_audience_model}
\alias{cleanroomsml_create_audience_model}
\title{Defines the information necessary to create an audience model}
\usage{
cleanroomsml_create_audience_model(
  trainingDataStartTime = NULL,
  trainingDataEndTime = NULL,
  name,
  trainingDatasetArn,
  kmsKeyArn = NULL,
  tags = NULL,
  description = NULL
)
}
\arguments{
\item{trainingDataStartTime}{The start date and time of the training window.}

\item{trainingDataEndTime}{The end date and time of the training window.}

\item{name}{[required] The name of the audience model resource.}

\item{trainingDatasetArn}{[required] The Amazon Resource Name (ARN) of the training dataset for this audience
model.}

\item{kmsKeyArn}{The Amazon Resource Name (ARN) of the KMS key. This key is used to
encrypt and decrypt customer-owned data in the trained ML model and the
associated data.}

\item{tags}{The optional metadata that you apply to the resource to help you
categorize and organize them. Each tag consists of a key and an optional
value, both of which you define.

The following basic restrictions apply to tags:
\itemize{
\item Maximum number of tags per resource - 50.
\item For each resource, each tag key must be unique, and each tag key can
have only one value.
\item Maximum key length - 128 Unicode characters in UTF-8.
\item Maximum value length - 256 Unicode characters in UTF-8.
\item If your tagging schema is used across multiple services and
resources, remember that other services may have restrictions on
allowed characters. Generally allowed characters are: letters,
numbers, and spaces representable in UTF-8, and the following
characters: + - = . _ : / @.
\item Tag keys and values are case sensitive.
\item Do not use aws:, AWS:, or any upper or lowercase combination of such
as a prefix for keys as it is reserved for AWS use. You cannot edit
or delete tag keys with this prefix. Values can have this prefix. If
a tag value has aws as its prefix but the key does not, then Clean
Rooms ML considers it to be a user tag and will count against the
limit of 50 tags. Tags with only the key prefix of aws do not count
against your tags per resource limit.
}}

\item{description}{The description of the audience model.}
}
\description{
Defines the information necessary to create an audience model. An audience model is a machine learning model that Clean Rooms ML trains to measure similarity between users. Clean Rooms ML manages training and storing the audience model. The audience model can be used in multiple calls to the \code{\link[=cleanroomsml_start_audience_generation_job]{start_audience_generation_job}} API.

See \url{https://www.paws-r-sdk.com/docs/cleanroomsml_create_audience_model/} for full documentation.
}
\keyword{internal}
