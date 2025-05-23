% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_list_users}
\alias{cognitoidentityprovider_list_users}
\title{Given a user pool ID, returns a list of users and their basic details in
a user pool}
\usage{
cognitoidentityprovider_list_users(
  UserPoolId,
  AttributesToGet = NULL,
  Limit = NULL,
  PaginationToken = NULL,
  Filter = NULL
)
}
\arguments{
\item{UserPoolId}{[required] The ID of the user pool where you want to display or search for users.}

\item{AttributesToGet}{A JSON array of user attribute names, for example \code{given_name}, that you
want Amazon Cognito to include in the response for each user. When you
don't provide an \code{AttributesToGet} parameter, Amazon Cognito returns all
attributes for each user.

Use \code{AttributesToGet} with required attributes in your user pool, or in
conjunction with \code{Filter}. Amazon Cognito returns an error if not all
users in the results have set a value for the attribute you request.
Attributes that you can't filter on, including custom attributes, must
have a value set in every user profile before an \code{AttributesToGet}
parameter returns results.}

\item{Limit}{The maximum number of users that you want Amazon Cognito to return in
the response.}

\item{PaginationToken}{This API operation returns a limited number of results. The pagination
token is an identifier that you can present in an additional API request
with the same parameters. When you include the pagination token, Amazon
Cognito returns the next set of items after the current list. Subsequent
requests return a new pagination token. By use of this token, you can
paginate through the full list of items.}

\item{Filter}{A filter string of the form
\verb{\\"AttributeName Filter-Type \\"AttributeValue\\"}. Quotation marks within
the filter string must be escaped using the backslash (\verb{\\}) character.
For example, \verb{"family_name = \\"Reddy\\""}.
\itemize{
\item \emph{AttributeName}: The name of the attribute to search for. You can
only search for one attribute at a time.
\item \emph{Filter-Type}: For an exact match, use \code{=}, for example,
"\verb{given_name = \\"Jon\\"}". For a prefix ("starts with") match, use
\verb{^=}, for example, "\verb{given_name ^= \\"Jon\\"}".
\item \emph{AttributeValue}: The attribute value that must be matched for each
user.
}

If the filter string is empty,
\code{\link[=cognitoidentityprovider_list_users]{list_users}} returns all users in
the user pool.

You can only search for the following standard attributes:
\itemize{
\item \code{username} (case-sensitive)
\item \code{email}
\item \code{phone_number}
\item \code{name}
\item \code{given_name}
\item \code{family_name}
\item \code{preferred_username}
\item \code{cognito:user_status} (called \strong{Status} in the Console)
(case-insensitive)
\item \verb{status (called Enabled in the Console) (case-sensitive)}
\item \code{sub}
}

Custom attributes aren't searchable.

You can also list users with a client-side filter. The server-side
filter matches no more than one attribute. For an advanced search, use a
client-side filter with the \code{--query} parameter of the \code{list-users}
action in the CLI. When you use a client-side filter, ListUsers returns
a paginated list of zero or more users. You can receive multiple pages
in a row with zero results. Repeat the query with each pagination token
that is returned until you receive a null pagination token value, and
then review the combined result.

For more information about server-side and client-side filtering, see
\href{https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html}{FilteringCLI output}
in the \href{https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html}{Command Line Interface User Guide}.

For more information, see \href{https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-using-listusers-api}{Searching for Users Using the ListUsers API}
and \href{https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-listusers-api-examples}{Examples of Using the ListUsers API}
in the \emph{Amazon Cognito Developer Guide}.}
}
\description{
Given a user pool ID, returns a list of users and their basic details in a user pool.

See \url{https://www.paws-r-sdk.com/docs/cognitoidentityprovider_list_users/} for full documentation.
}
\keyword{internal}
