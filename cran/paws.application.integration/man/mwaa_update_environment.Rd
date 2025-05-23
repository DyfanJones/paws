% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mwaa_operations.R
\name{mwaa_update_environment}
\alias{mwaa_update_environment}
\title{Updates an Amazon Managed Workflows for Apache Airflow (MWAA)
environment}
\usage{
mwaa_update_environment(
  Name,
  ExecutionRoleArn = NULL,
  AirflowVersion = NULL,
  SourceBucketArn = NULL,
  DagS3Path = NULL,
  PluginsS3Path = NULL,
  PluginsS3ObjectVersion = NULL,
  RequirementsS3Path = NULL,
  RequirementsS3ObjectVersion = NULL,
  StartupScriptS3Path = NULL,
  StartupScriptS3ObjectVersion = NULL,
  AirflowConfigurationOptions = NULL,
  EnvironmentClass = NULL,
  MaxWorkers = NULL,
  NetworkConfiguration = NULL,
  LoggingConfiguration = NULL,
  WeeklyMaintenanceWindowStart = NULL,
  WebserverAccessMode = NULL,
  MinWorkers = NULL,
  Schedulers = NULL,
  MinWebservers = NULL,
  MaxWebservers = NULL
)
}
\arguments{
\item{Name}{[required] The name of your Amazon MWAA environment. For example,
\code{MyMWAAEnvironment}.}

\item{ExecutionRoleArn}{The Amazon Resource Name (ARN) of the execution role in IAM that allows
MWAA to access Amazon Web Services resources in your environment. For
example, \verb{arn:aws:iam::123456789:role/my-execution-role}. For more
information, see \href{https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html}{Amazon MWAA Execution role}.}

\item{AirflowVersion}{The Apache Airflow version for your environment. To upgrade your
environment, specify a newer version of Apache Airflow supported by
Amazon MWAA.

Before you upgrade an environment, make sure your requirements, DAGs,
plugins, and other resources used in your workflows are compatible with
the new Apache Airflow version. For more information about updating your
resources, see \href{https://docs.aws.amazon.com/mwaa/latest/userguide/upgrading-environment.html}{Upgrading an Amazon MWAA environment}.

Valid values: \verb{1.10.12}, \verb{2.0.2}, \verb{2.2.2}, \verb{2.4.3}, \verb{2.5.1}, \verb{2.6.3},
\verb{2.7.2}, \verb{2.8.1}, \verb{2.9.2}, \verb{2.10.1}, and \verb{2.10.3}.}

\item{SourceBucketArn}{The Amazon Resource Name (ARN) of the Amazon S3 bucket where your DAG
code and supporting files are stored. For example,
\code{arn:aws:s3:::my-airflow-bucket-unique-name}. For more information, see
\href{https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html}{Create an Amazon S3 bucket for Amazon MWAA}.}

\item{DagS3Path}{The relative path to the DAGs folder on your Amazon S3 bucket. For
example, \code{dags}. For more information, see \href{https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html}{Adding or updating DAGs}.}

\item{PluginsS3Path}{The relative path to the \code{plugins.zip} file on your Amazon S3 bucket.
For example, \code{plugins.zip}. If specified, then the plugins.zip version
is required. For more information, see \href{https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html}{Installing custom plugins}.}

\item{PluginsS3ObjectVersion}{The version of the plugins.zip file on your Amazon S3 bucket. You must
specify a version each time a \code{plugins.zip} file is updated. For more
information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html}{How S3 Versioning works}.}

\item{RequirementsS3Path}{The relative path to the \code{requirements.txt} file on your Amazon S3
bucket. For example, \code{requirements.txt}. If specified, then a file
version is required. For more information, see \href{https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html}{Installing Python dependencies}.}

\item{RequirementsS3ObjectVersion}{The version of the requirements.txt file on your Amazon S3 bucket. You
must specify a version each time a \code{requirements.txt} file is updated.
For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html}{How S3 Versioning works}.}

\item{StartupScriptS3Path}{The relative path to the startup shell script in your Amazon S3 bucket.
For example, \verb{s3://mwaa-environment/startup.sh}.

Amazon MWAA runs the script as your environment starts, and before
running the Apache Airflow process. You can use this script to install
dependencies, modify Apache Airflow configuration options, and set
environment variables. For more information, see \href{https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html}{Using a startup script}.}

\item{StartupScriptS3ObjectVersion}{The version of the startup shell script in your Amazon S3 bucket. You
must specify the \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html}{version ID}
that Amazon S3 assigns to the file every time you update the script.

Version IDs are Unicode, UTF-8 encoded, URL-ready, opaque strings that
are no more than 1,024 bytes long. The following is an example:

\verb{3sL4kqtJlcpXroDTDmJ+rmSpXd3dIbrHY+MTRCxf3vjVBH40Nr8X8gdRQBpUMLUo}

For more information, see \href{https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html}{Using a startup script}.}

\item{AirflowConfigurationOptions}{A list of key-value pairs containing the Apache Airflow configuration
options you want to attach to your environment. For more information,
see \href{https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html}{Apache Airflow configuration options}.}

\item{EnvironmentClass}{The environment class type. Valid values: \code{mw1.micro}, \code{mw1.small},
\code{mw1.medium}, \code{mw1.large}, \code{mw1.xlarge}, and \code{mw1.2xlarge}. For more
information, see \href{https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html}{Amazon MWAA environment class}.}

\item{MaxWorkers}{The maximum number of workers that you want to run in your environment.
MWAA scales the number of Apache Airflow workers up to the number you
specify in the \code{MaxWorkers} field. For example, \code{20}. When there are no
more tasks running, and no more in the queue, MWAA disposes of the extra
workers leaving the one worker that is included with your environment,
or the number you specify in \code{MinWorkers}.}

\item{NetworkConfiguration}{The VPC networking components used to secure and enable network traffic
between the Amazon Web Services resources for your environment. For more
information, see \href{https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html}{About networking on Amazon MWAA}.}

\item{LoggingConfiguration}{The Apache Airflow log types to send to CloudWatch Logs.}

\item{WeeklyMaintenanceWindowStart}{The day and time of the week in Coordinated Universal Time (UTC) 24-hour
standard time to start weekly maintenance updates of your environment in
the following format: \code{DAY:HH:MM}. For example: \code{TUE:03:30}. You can
specify a start time in 30 minute increments only.}

\item{WebserverAccessMode}{The Apache Airflow \emph{Web server} access mode. For more information, see
\href{https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html}{Apache Airflow access modes}.}

\item{MinWorkers}{The minimum number of workers that you want to run in your environment.
MWAA scales the number of Apache Airflow workers up to the number you
specify in the \code{MaxWorkers} field. When there are no more tasks running,
and no more in the queue, MWAA disposes of the extra workers leaving the
worker count you specify in the \code{MinWorkers} field. For example, \code{2}.}

\item{Schedulers}{The number of Apache Airflow schedulers to run in your Amazon MWAA
environment.}

\item{MinWebservers}{The minimum number of web servers that you want to run in your
environment. Amazon MWAA scales the number of Apache Airflow web servers
up to the number you specify for \code{MaxWebservers} when you interact with
your Apache Airflow environment using Apache Airflow REST API, or the
Apache Airflow CLI. As the transaction-per-second rate, and the network
load, decrease, Amazon MWAA disposes of the additional web servers, and
scales down to the number set in \code{MinxWebserers}.

Valid values: For environments larger than mw1.micro, accepts values
from \code{2} to \code{5}. Defaults to \code{2} for all environment sizes except
mw1.micro, which defaults to \code{1}.}

\item{MaxWebservers}{The maximum number of web servers that you want to run in your
environment. Amazon MWAA scales the number of Apache Airflow web servers
up to the number you specify for \code{MaxWebservers} when you interact with
your Apache Airflow environment using Apache Airflow REST API, or the
Apache Airflow CLI. For example, in scenarios where your workload
requires network calls to the Apache Airflow REST API with a high
transaction-per-second (TPS) rate, Amazon MWAA will increase the number
of web servers up to the number set in \code{MaxWebserers}. As TPS rates
decrease Amazon MWAA disposes of the additional web servers, and scales
down to the number set in \code{MinxWebserers}.

Valid values: For environments larger than mw1.micro, accepts values
from \code{2} to \code{5}. Defaults to \code{2} for all environment sizes except
mw1.micro, which defaults to \code{1}.}
}
\description{
Updates an Amazon Managed Workflows for Apache Airflow (MWAA) environment.

See \url{https://www.paws-r-sdk.com/docs/mwaa_update_environment/} for full documentation.
}
\keyword{internal}
