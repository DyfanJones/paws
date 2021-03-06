% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elastictranscoder_operations.R
\name{elastictranscoder_delete_pipeline}
\alias{elastictranscoder_delete_pipeline}
\title{The DeletePipeline operation removes a pipeline}
\usage{
elastictranscoder_delete_pipeline(Id)
}
\arguments{
\item{Id}{[required] The identifier of the pipeline that you want to delete.}
}
\description{
The DeletePipeline operation removes a pipeline.
}
\details{
You can only delete a pipeline that has never been used or that is not
currently in use (doesn\'t contain any active jobs). If the pipeline is
currently in use, \code{DeletePipeline} returns an error.
}
\section{Request syntax}{
\preformatted{svc$delete_pipeline(
  Id = "string"
)
}
}

\keyword{internal}
