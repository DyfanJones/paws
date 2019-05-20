% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53domains_operations.R
\name{route53domains_get_domain_suggestions}
\alias{route53domains_get_domain_suggestions}
\title{The GetDomainSuggestions operation returns a list of suggested domain
names given a string, which can either be a domain name or simply a word
or phrase (without spaces)}
\usage{
route53domains_get_domain_suggestions(DomainName, SuggestionCount,
  OnlyAvailable)
}
\arguments{
\item{DomainName}{[required] A domain name that you want to use as the basis for a list of possible
domain names. The domain name must contain a top-level domain (TLD),
such as .com, that Amazon Route 53 supports. For a list of TLDs, see
\href{http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html}{Domains that You Can Register with Amazon Route 53}
in the \emph{Amazon Route 53 Developer Guide}.}

\item{SuggestionCount}{[required] The number of suggested domain names that you want Amazon Route 53 to
return.}

\item{OnlyAvailable}{[required] If \code{OnlyAvailable} is \code{true}, Amazon Route 53 returns only domain names
that are available. If \code{OnlyAvailable} is \code{false}, Amazon Route 53
returns domain names without checking whether they're available to be
registered. To determine whether the domain is available, you can call
\code{checkDomainAvailability} for each suggestion.}
}
\description{
The GetDomainSuggestions operation returns a list of suggested domain
names given a string, which can either be a domain name or simply a word
or phrase (without spaces).
}
\section{Request syntax}{
\preformatted{svc$get_domain_suggestions(
  DomainName = "string",
  SuggestionCount = 123,
  OnlyAvailable = TRUE|FALSE
)
}
}

\keyword{internal}