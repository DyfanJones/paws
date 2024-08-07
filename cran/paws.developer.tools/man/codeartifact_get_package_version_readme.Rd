% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codeartifact_operations.R
\name{codeartifact_get_package_version_readme}
\alias{codeartifact_get_package_version_readme}
\title{Gets the readme file or descriptive text for a package version}
\usage{
codeartifact_get_package_version_readme(
  domain,
  domainOwner = NULL,
  repository,
  format,
  namespace = NULL,
  package,
  packageVersion
)
}
\arguments{
\item{domain}{[required] The name of the domain that contains the repository that contains the
package version with the requested readme file.}

\item{domainOwner}{The 12-digit account number of the Amazon Web Services account that owns
the domain. It does not include dashes or spaces.}

\item{repository}{[required] The repository that contains the package with the requested readme file.}

\item{format}{[required] A format that specifies the type of the package version with the
requested readme file.}

\item{namespace}{The namespace of the package version with the requested readme file. The
package component that specifies its namespace depends on its type. For
example:

The namespace is required when requesting the readme from package
versions of the following formats:
\itemize{
\item Maven
\item Swift
\item generic
\item The namespace of a Maven package version is its \code{groupId}.
\item The namespace of an npm or Swift package version is its \code{scope}.
\item The namespace of a generic package is its \code{namespace}.
\item Python, NuGet, Ruby, and Cargo package versions do not contain a
corresponding component, package versions of those formats do not
have a namespace.
}}

\item{package}{[required] The name of the package version that contains the requested readme file.}

\item{packageVersion}{[required] A string that contains the package version (for example, \verb{3.5.2}).}
}
\description{
Gets the readme file or descriptive text for a package version.

See \url{https://www.paws-r-sdk.com/docs/codeartifact_get_package_version_readme/} for full documentation.
}
\keyword{internal}
