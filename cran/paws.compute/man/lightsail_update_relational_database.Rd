% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_update_relational_database}
\alias{lightsail_update_relational_database}
\title{Allows the update of one or more attributes of a database in Amazon
Lightsail}
\usage{
lightsail_update_relational_database(
  relationalDatabaseName,
  masterUserPassword = NULL,
  rotateMasterUserPassword = NULL,
  preferredBackupWindow = NULL,
  preferredMaintenanceWindow = NULL,
  enableBackupRetention = NULL,
  disableBackupRetention = NULL,
  publiclyAccessible = NULL,
  applyImmediately = NULL,
  caCertificateIdentifier = NULL,
  relationalDatabaseBlueprintId = NULL
)
}
\arguments{
\item{relationalDatabaseName}{[required] The name of your Lightsail database resource to update.}

\item{masterUserPassword}{The password for the master user. The password can include any printable
ASCII character except "/", """, or "@".

My\strong{SQL}

Constraints: Must contain from 8 to 41 characters.

\strong{PostgreSQL}

Constraints: Must contain from 8 to 128 characters.}

\item{rotateMasterUserPassword}{When \code{true}, the master user password is changed to a new strong
password generated by Lightsail.

Use the \verb{get relational database master user password} operation to get
the new password.}

\item{preferredBackupWindow}{The daily time range during which automated backups are created for your
database if automated backups are enabled.

Constraints:
\itemize{
\item Must be in the \code{hh24:mi-hh24:mi} format.

Example: \code{16:00-16:30}
\item Specified in Coordinated Universal Time (UTC).
\item Must not conflict with the preferred maintenance window.
\item Must be at least 30 minutes.
}}

\item{preferredMaintenanceWindow}{The weekly time range during which system maintenance can occur on your
database.

The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Web Services Region, occurring on a random
day of the week.

Constraints:
\itemize{
\item Must be in the \code{ddd:hh24:mi-ddd:hh24:mi} format.
\item Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
\item Must be at least 30 minutes.
\item Specified in Coordinated Universal Time (UTC).
\item Example: \code{Tue:17:00-Tue:17:30}
}}

\item{enableBackupRetention}{When \code{true}, enables automated backup retention for your database.

Updates are applied during the next maintenance window because this can
result in an outage.}

\item{disableBackupRetention}{When \code{true}, disables automated backup retention for your database.

Disabling backup retention deletes all automated database backups.
Before disabling this, you may want to create a snapshot of your
database using the \verb{create relational database snapshot} operation.

Updates are applied during the next maintenance window because this can
result in an outage.}

\item{publiclyAccessible}{Specifies the accessibility options for your database. A value of \code{true}
specifies a database that is available to resources outside of your
Lightsail account. A value of \code{false} specifies a database that is
available only to your Lightsail resources in the same region as your
database.}

\item{applyImmediately}{When \code{true}, applies changes immediately. When \code{false}, applies changes
during the preferred maintenance window. Some changes may cause an
outage.

Default: \code{false}}

\item{caCertificateIdentifier}{Indicates the certificate that needs to be associated with the database.}

\item{relationalDatabaseBlueprintId}{This parameter is used to update the major version of the database.
Enter the \code{blueprintId} for the major version that you want to update
to.

Use the
\code{\link[=lightsail_get_relational_database_blueprints]{get_relational_database_blueprints}}
action to get a list of available blueprint IDs.}
}
\description{
Allows the update of one or more attributes of a database in Amazon Lightsail.

See \url{https://www.paws-r-sdk.com/docs/lightsail_update_relational_database/} for full documentation.
}
\keyword{internal}
