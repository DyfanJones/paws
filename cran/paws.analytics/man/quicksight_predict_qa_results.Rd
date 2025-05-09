% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_predict_qa_results}
\alias{quicksight_predict_qa_results}
\title{Predicts existing visuals or generates new visuals to answer a given
query}
\usage{
quicksight_predict_qa_results(
  AwsAccountId,
  QueryText,
  IncludeQuickSightQIndex = NULL,
  IncludeGeneratedAnswer = NULL,
  MaxTopicsToConsider = NULL
)
}
\arguments{
\item{AwsAccountId}{[required] The ID of the Amazon Web Services account that the user wants to execute
Predict QA results in.}

\item{QueryText}{[required] The query text to be used to predict QA results.}

\item{IncludeQuickSightQIndex}{Indicates whether Q indicies are included or excluded.}

\item{IncludeGeneratedAnswer}{Indicates whether generated answers are included or excluded.}

\item{MaxTopicsToConsider}{The number of maximum topics to be considered to predict QA results.}
}
\description{
Predicts existing visuals or generates new visuals to answer a given query.

See \url{https://www.paws-r-sdk.com/docs/quicksight_predict_qa_results/} for full documentation.
}
\keyword{internal}
