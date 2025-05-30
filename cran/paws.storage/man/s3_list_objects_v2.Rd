% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_list_objects_v2}
\alias{s3_list_objects_v2}
\title{Returns some or all (up to 1,000) of the objects in a bucket with each
request}
\usage{
s3_list_objects_v2(
  Bucket,
  Delimiter = NULL,
  EncodingType = NULL,
  MaxKeys = NULL,
  Prefix = NULL,
  ContinuationToken = NULL,
  FetchOwner = NULL,
  StartAfter = NULL,
  RequestPayer = NULL,
  ExpectedBucketOwner = NULL,
  OptionalObjectAttributes = NULL
)
}
\arguments{
\item{Bucket}{[required] \strong{Directory buckets} - When you use this operation with a directory
bucket, you must use virtual-hosted-style requests in the format
\code{ Bucket-name.s3express-zone-id.region-code.amazonaws.com}. Path-style
requests are not supported. Directory bucket names must be unique in the
chosen Zone (Availability Zone or Local Zone). Bucket names must follow
the format \code{ bucket-base-name--zone-id--x-s3} (for example,
\code{ amzn-s3-demo-bucket--usw2-az1--x-s3}). For information about bucket
naming restrictions, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html}{Directory bucket naming rules}
in the \emph{Amazon S3 User Guide}.

\strong{Access points} - When you use this action with an access point for
general purpose buckets, you must provide the alias of the access point
in place of the bucket name or specify the access point ARN. When you
use this action with an access point for directory buckets, you must
provide the access point name in place of the bucket name. When using
the access point ARN, you must direct requests to the access point
hostname. The access point hostname takes the form
\emph{AccessPointName}-\emph{AccountId}.s3-accesspoint.\emph{Region}.amazonaws.com.
When using this action with an access point through the Amazon Web
Services SDKs, you provide the access point ARN in place of the bucket
name. For more information about access point ARNs, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html}{Using access points}
in the \emph{Amazon S3 User Guide}.

Object Lambda access points are not supported by directory buckets.

\strong{S3 on Outposts} - When you use this action with S3 on Outposts, you
must direct requests to the S3 on Outposts hostname. The S3 on Outposts
hostname takes the form
\code{ AccessPointName-AccountId.outpostID.s3-outposts.Region.amazonaws.com}.
When you use this action with S3 on Outposts, the destination bucket
must be the Outposts access point ARN or the access point alias. For
more information about S3 on Outposts, see \href{https://docs.aws.amazon.com/AmazonS3/latest/s3-outposts/S3onOutposts.html}{What is S3 on Outposts?}
in the \emph{Amazon S3 User Guide}.}

\item{Delimiter}{A delimiter is a character that you use to group keys.
\itemize{
\item \strong{Directory buckets} - For directory buckets, \code{/} is the only
supported delimiter.
\item \strong{Directory buckets} - When you query
\code{\link[=s3_list_objects_v2]{list_objects_v2}} with a delimiter during
in-progress multipart uploads, the \code{CommonPrefixes} response
parameter contains the prefixes that are associated with the
in-progress multipart uploads. For more information about multipart
uploads, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html}{Multipart Upload Overview}
in the \emph{Amazon S3 User Guide}.
}}

\item{EncodingType}{Encoding type used by Amazon S3 to encode the \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html}{object keys}
in the response. Responses are encoded only in UTF-8. An object key can
contain any Unicode character. However, the XML 1.0 parser can't parse
certain characters, such as characters with an ASCII value from 0 to 10.
For characters that aren't supported in XML 1.0, you can add this
parameter to request that Amazon S3 encode the keys in the response. For
more information about characters to avoid in object key names, see
\href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-guidelines}{Object key naming guidelines}.

When using the URL encoding type, non-ASCII characters that are used in
an object's key name will be percent-encoded according to UTF-8 code
values. For example, the object \verb{test_file(3).png} will appear as
\verb{test_file\%283\%29.png}.}

\item{MaxKeys}{Sets the maximum number of keys returned in the response. By default,
the action returns up to 1,000 key names. The response might contain
fewer keys but will never contain more.}

\item{Prefix}{Limits the response to keys that begin with the specified prefix.

\strong{Directory buckets} - For directory buckets, only prefixes that end in
a delimiter (\code{/}) are supported.}

\item{ContinuationToken}{\code{ContinuationToken} indicates to Amazon S3 that the list is being
continued on this bucket with a token. \code{ContinuationToken} is obfuscated
and is not a real key. You can use this \code{ContinuationToken} for
pagination of the list results.}

\item{FetchOwner}{The owner field is not present in
\code{\link[=s3_list_objects_v2]{list_objects_v2}} by default. If you want to
return the owner field with each key in the result, then set the
\code{FetchOwner} field to \code{true}.

\strong{Directory buckets} - For directory buckets, the bucket owner is
returned as the object owner for all objects.}

\item{StartAfter}{StartAfter is where you want Amazon S3 to start listing from. Amazon S3
starts listing after this specified key. StartAfter can be any key in
the bucket.

This functionality is not supported for directory buckets.}

\item{RequestPayer}{Confirms that the requester knows that she or he will be charged for the
list objects request in V2 style. Bucket owners need not specify this
parameter in their requests.

This functionality is not supported for directory buckets.}

\item{ExpectedBucketOwner}{The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request fails
with the HTTP status code \verb{403 Forbidden} (access denied).}

\item{OptionalObjectAttributes}{Specifies the optional fields that you want returned in the response.
Fields that you do not specify are not returned.

This functionality is not supported for directory buckets.}
}
\description{
Returns some or all (up to 1,000) of the objects in a bucket with each request. You can use the request parameters as selection criteria to return a subset of the objects in a bucket. A \verb{200 OK} response can contain valid or invalid XML. Make sure to design your application to parse the contents of the response and handle it appropriately. For more information about listing objects, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/ListingKeysUsingAPIs.html}{Listing object keys programmatically} in the \emph{Amazon S3 User Guide}. To get a list of your buckets, see \code{\link[=s3_list_buckets]{list_buckets}}.

See \url{https://www.paws-r-sdk.com/docs/s3_list_objects_v2/} for full documentation.
}
\keyword{internal}
