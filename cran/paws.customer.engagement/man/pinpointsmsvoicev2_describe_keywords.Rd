% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpointsmsvoicev2_operations.R
\name{pinpointsmsvoicev2_describe_keywords}
\alias{pinpointsmsvoicev2_describe_keywords}
\title{Describes the specified keywords or all keywords on your origination
phone number or pool}
\usage{
pinpointsmsvoicev2_describe_keywords(
  OriginationIdentity,
  Keywords = NULL,
  Filters = NULL,
  NextToken = NULL,
  MaxResults = NULL
)
}
\arguments{
\item{OriginationIdentity}{[required] The origination identity to use such as a PhoneNumberId, PhoneNumberArn,
SenderId or SenderIdArn. You can use
\code{\link[=pinpointsmsvoicev2_describe_phone_numbers]{describe_phone_numbers}} to
find the values for PhoneNumberId and PhoneNumberArn while
\code{\link[=pinpointsmsvoicev2_describe_sender_ids]{describe_sender_ids}} can be
used to get the values for SenderId and SenderIdArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).}

\item{Keywords}{An array of keywords to search for.}

\item{Filters}{An array of keyword filters to filter the results.}

\item{NextToken}{The token to be used for the next set of paginated results. You don't
need to supply a value for this field in the initial request.}

\item{MaxResults}{The maximum number of results to return per each request.}
}
\description{
Describes the specified keywords or all keywords on your origination phone number or pool.

See \url{https://www.paws-r-sdk.com/docs/pinpointsmsvoicev2_describe_keywords/} for full documentation.
}
\keyword{internal}
