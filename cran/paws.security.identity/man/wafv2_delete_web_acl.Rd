% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wafv2_operations.R
\name{wafv2_delete_web_acl}
\alias{wafv2_delete_web_acl}
\title{Deletes the specified WebACL}
\usage{
wafv2_delete_web_acl(Name, Scope, Id, LockToken)
}
\arguments{
\item{Name}{[required] The name of the web ACL. You cannot change the name of a web ACL after
you create it.}

\item{Scope}{[required] Specifies whether this is for a global resource type, such as a Amazon
CloudFront distribution. For an Amplify application, use \code{CLOUDFRONT}.

To work with CloudFront, you must also specify the Region US East (N.
Virginia) as follows:
\itemize{
\item CLI - Specify the Region when you use the CloudFront scope:
\code{--scope=CLOUDFRONT --region=us-east-1}.
\item API and SDKs - For all calls, use the Region endpoint us-east-1.
}}

\item{Id}{[required] The unique identifier for the web ACL. This ID is returned in the
responses to create and list commands. You provide it to operations like
update and delete.}

\item{LockToken}{[required] A token used for optimistic locking. WAF returns a token to your \code{get}
and \code{list} requests, to mark the state of the entity at the time of the
request. To make changes to the entity associated with the token, you
provide the token to operations like \code{update} and \code{delete}. WAF uses the
token to ensure that no changes have been made to the entity since you
last retrieved it. If a change has been made, the update fails with a
\code{WAFOptimisticLockException}. If this happens, perform another \code{get},
and use the new token returned by that operation.}
}
\description{
Deletes the specified WebACL.

See \url{https://www.paws-r-sdk.com/docs/wafv2_delete_web_acl/} for full documentation.
}
\keyword{internal}
