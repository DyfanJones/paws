% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rdsdataservice_operations.R
\name{rdsdataservice_batch_execute_statement}
\alias{rdsdataservice_batch_execute_statement}
\title{Runs a batch SQL statement over an array of data}
\usage{
rdsdataservice_batch_execute_statement(
  resourceArn,
  secretArn,
  sql,
  database = NULL,
  schema = NULL,
  parameterSets = NULL,
  transactionId = NULL
)
}
\arguments{
\item{resourceArn}{[required] The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.}

\item{secretArn}{[required] The ARN of the secret that enables access to the DB cluster. Enter the
database user name and password for the credentials in the secret.

For information about creating the secret, see \href{https://docs.aws.amazon.com/secretsmanager/latest/userguide/}{Create a database secret}.}

\item{sql}{[required] The SQL statement to run. Don't include a semicolon (;) at the end of
the SQL statement.}

\item{database}{The name of the database.}

\item{schema}{The name of the database schema.

Currently, the \code{schema} parameter isn't supported.}

\item{parameterSets}{The parameter set for the batch operation.

The SQL statement is executed as many times as the number of parameter
sets provided. To execute a SQL statement with no parameters, use one of
the following options:
\itemize{
\item Specify one or more empty parameter sets.
\item Use the \code{\link[=rdsdataservice_execute_statement]{execute_statement}}
operation instead of the
\code{\link[=rdsdataservice_batch_execute_statement]{batch_execute_statement}}
operation.
}

Array parameters are not supported.}

\item{transactionId}{The identifier of a transaction that was started by using the
\code{\link[=rdsdataservice_begin_transaction]{begin_transaction}} operation.
Specify the transaction ID of the transaction that you want to include
the SQL statement in.

If the SQL statement is not part of a transaction, don't set this
parameter.}
}
\description{
Runs a batch SQL statement over an array of data.

See \url{https://www.paws-r-sdk.com/docs/rdsdataservice_batch_execute_statement/} for full documentation.
}
\keyword{internal}
