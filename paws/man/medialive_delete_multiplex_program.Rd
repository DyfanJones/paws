% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/medialive_operations.R
\name{medialive_delete_multiplex_program}
\alias{medialive_delete_multiplex_program}
\title{Delete a program from a multiplex}
\usage{
medialive_delete_multiplex_program(MultiplexId, ProgramName)
}
\arguments{
\item{MultiplexId}{[required] The ID of the multiplex that the program belongs to.}

\item{ProgramName}{[required] The multiplex program name.}
}
\description{
Delete a program from a multiplex.
}
\section{Request syntax}{
\preformatted{svc$delete_multiplex_program(
  MultiplexId = "string",
  ProgramName = "string"
)
}
}

\keyword{internal}
