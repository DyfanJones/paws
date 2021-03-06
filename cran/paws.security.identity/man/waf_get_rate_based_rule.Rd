% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/waf_operations.R
\name{waf_get_rate_based_rule}
\alias{waf_get_rate_based_rule}
\title{This is AWS WAF CLASSIC documentation}
\usage{
waf_get_rate_based_rule(RuleId)
}
\arguments{
\item{RuleId}{[required] The \code{RuleId} of the RateBasedRule that you want to get. \code{RuleId} is
returned by CreateRateBasedRule and by ListRateBasedRules.}
}
\description{
This is \strong{AWS WAF Classic} documentation. For more information, see
\href{https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html}{AWS WAF Classic}
in the developer guide.
}
\details{
\strong{For the latest version of AWS WAF}, use the AWS WAFV2 API and see the
\href{https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html}{AWS WAF Developer Guide}.
With the latest version, AWS WAF has a single set of endpoints for
regional and global use.

Returns the RateBasedRule that is specified by the \code{RuleId} that you
included in the \code{GetRateBasedRule} request.
}
\section{Request syntax}{
\preformatted{svc$get_rate_based_rule(
  RuleId = "string"
)
}
}

\keyword{internal}
