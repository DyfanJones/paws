% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_start_ml_labeling_set_generation_task_run}
\alias{glue_start_ml_labeling_set_generation_task_run}
\title{Starts the active learning workflow for your machine learning transform
to improve the transform's quality by generating label sets and adding
labels}
\usage{
glue_start_ml_labeling_set_generation_task_run(TransformId,
  OutputS3Path)
}
\arguments{
\item{TransformId}{[required] The unique identifier of the machine learning transform.}

\item{OutputS3Path}{[required] The Amazon Simple Storage Service (Amazon S3) path where you generate
the labeling set.}
}
\description{
Starts the active learning workflow for your machine learning transform
to improve the transform\'s quality by generating label sets and adding
labels.
}
\details{
When the \code{StartMLLabelingSetGenerationTaskRun} finishes, AWS Glue will
have generated a \"labeling set\" or a set of questions for humans to
answer.

In the case of the \code{FindMatches} transform, these questions are of the
form, "What is the correct way to group these rows together into groups
composed entirely of matching records?"

After the labeling process is finished, you can upload your labels with
a call to \code{StartImportLabelsTaskRun}. After \code{StartImportLabelsTaskRun}
finishes, all future runs of the machine learning transform will use the
new and improved labels and perform a higher-quality transformation.
}
\section{Request syntax}{
\preformatted{svc$start_ml_labeling_set_generation_task_run(
  TransformId = "string",
  OutputS3Path = "string"
)
}
}

\keyword{internal}
