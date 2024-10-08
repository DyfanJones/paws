% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datazone_operations.R
\name{datazone_get_listing}
\alias{datazone_get_listing}
\title{Gets a listing (a record of an asset at a given time)}
\usage{
datazone_get_listing(domainIdentifier, identifier, listingRevision = NULL)
}
\arguments{
\item{domainIdentifier}{[required] The ID of the Amazon DataZone domain.}

\item{identifier}{[required] The ID of the listing.}

\item{listingRevision}{The revision of the listing.}
}
\description{
Gets a listing (a record of an asset at a given time). If you specify a listing version, only details that are specific to that version are returned.

See \url{https://www.paws-r-sdk.com/docs/datazone_get_listing/} for full documentation.
}
\keyword{internal}
