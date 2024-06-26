% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_delete_hyper_parameter_tuning_job}
\alias{sagemaker_delete_hyper_parameter_tuning_job}
\title{Deletes a hyperparameter tuning job}
\usage{
sagemaker_delete_hyper_parameter_tuning_job(HyperParameterTuningJobName)
}
\arguments{
\item{HyperParameterTuningJobName}{[required] The name of the hyperparameter tuning job that you want to delete.}
}
\description{
Deletes a hyperparameter tuning job. The \code{\link[=sagemaker_delete_hyper_parameter_tuning_job]{delete_hyper_parameter_tuning_job}} API deletes only the tuning job entry that was created in SageMaker when you called the \code{\link[=sagemaker_create_hyper_parameter_tuning_job]{create_hyper_parameter_tuning_job}} API. It does not delete training jobs, artifacts, or the IAM role that you specified when creating the model.

See \url{https://www.paws-r-sdk.com/docs/sagemaker_delete_hyper_parameter_tuning_job/} for full documentation.
}
\keyword{internal}
