% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_generate_embed_url_for_anonymous_user}
\alias{quicksight_generate_embed_url_for_anonymous_user}
\title{Generates an embed URL that you can use to embed an Amazon QuickSight
dashboard or visual in your website, without having to register any
reader users}
\usage{
quicksight_generate_embed_url_for_anonymous_user(
  AwsAccountId,
  SessionLifetimeInMinutes = NULL,
  Namespace,
  SessionTags = NULL,
  AuthorizedResourceArns,
  ExperienceConfiguration,
  AllowedDomains = NULL
)
}
\arguments{
\item{AwsAccountId}{[required] The ID for the Amazon Web Services account that contains the dashboard
that you're embedding.}

\item{SessionLifetimeInMinutes}{How many minutes the session is valid. The session lifetime must be in
[15-600] minutes range.}

\item{Namespace}{[required] The Amazon QuickSight namespace that the anonymous user virtually
belongs to. If you are not using an Amazon QuickSight custom namespace,
set this to \code{default}.}

\item{SessionTags}{The session tags used for row-level security. Before you use this
parameter, make sure that you have configured the relevant datasets
using the \code{DataSet$RowLevelPermissionTagConfiguration} parameter so that
session tags can be used to provide row-level security.

These are not the tags used for the Amazon Web Services resource tagging
feature. For more information, see \href{https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-rls-tags.html}{Using Row-Level Security (RLS) with Tags}in
the \emph{Amazon QuickSight User Guide}.}

\item{AuthorizedResourceArns}{[required] The Amazon Resource Names (ARNs) for the Amazon QuickSight resources
that the user is authorized to access during the lifetime of the
session.

If you choose \code{Dashboard} embedding experience, pass the list of
dashboard ARNs in the account that you want the user to be able to view.

If you want to make changes to the theme of your embedded content, pass
a list of theme ARNs that the anonymous users need access to.

Currently, you can pass up to 25 theme ARNs in each API call.}

\item{ExperienceConfiguration}{[required] The configuration of the experience that you are embedding.}

\item{AllowedDomains}{The domains that you want to add to the allow list for access to the
generated URL that is then embedded. This optional parameter overrides
the static domains that are configured in the Manage QuickSight menu in
the Amazon QuickSight console. Instead, it allows only the domains that
you include in this parameter. You can list up to three domains or
subdomains in each API call.

To include all subdomains under a specific domain to the allow list, use
\code{*}. For example, \verb{https://*.sapp.amazon.com} includes all subdomains
under \verb{https://sapp.amazon.com}.}
}
\description{
Generates an embed URL that you can use to embed an Amazon QuickSight dashboard or visual in your website, without having to register any reader users. Before you use this action, make sure that you have configured the dashboards and permissions.

See \url{https://www.paws-r-sdk.com/docs/quicksight_generate_embed_url_for_anonymous_user/} for full documentation.
}
\keyword{internal}
