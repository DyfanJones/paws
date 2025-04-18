% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_create_image}
\alias{sagemaker_create_image}
\title{Creates a custom SageMaker AI image}
\usage{
sagemaker_create_image(
  Description = NULL,
  DisplayName = NULL,
  ImageName,
  RoleArn,
  Tags = NULL
)
}
\arguments{
\item{Description}{The description of the image.}

\item{DisplayName}{The display name of the image. If not provided, \code{ImageName} is
displayed.}

\item{ImageName}{[required] The name of the image. Must be unique to your account.}

\item{RoleArn}{[required] The ARN of an IAM role that enables Amazon SageMaker AI to perform tasks
on your behalf.}

\item{Tags}{A list of tags to apply to the image.}
}
\description{
Creates a custom SageMaker AI image. A SageMaker AI image is a set of image versions. Each image version represents a container image stored in Amazon ECR. For more information, see \href{https://docs.aws.amazon.com/sagemaker/latest/dg/studio-byoi.html}{Bring your own SageMaker AI image}.

See \url{https://www.paws-r-sdk.com/docs/sagemaker_create_image/} for full documentation.
}
\keyword{internal}
