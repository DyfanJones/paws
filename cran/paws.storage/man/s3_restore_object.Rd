% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_restore_object}
\alias{s3_restore_object}
\title{This operation is not supported for directory buckets}
\usage{
s3_restore_object(
  Bucket,
  Key,
  VersionId = NULL,
  RestoreRequest = NULL,
  RequestPayer = NULL,
  ChecksumAlgorithm = NULL,
  ExpectedBucketOwner = NULL
)
}
\arguments{
\item{Bucket}{[required] The bucket name containing the object to restore.

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

\strong{S3 on Outposts} - When you use this action with S3 on Outposts, you
must direct requests to the S3 on Outposts hostname. The S3 on Outposts
hostname takes the form
\code{ AccessPointName-AccountId.outpostID.s3-outposts.Region.amazonaws.com}.
When you use this action with S3 on Outposts, the destination bucket
must be the Outposts access point ARN or the access point alias. For
more information about S3 on Outposts, see \href{https://docs.aws.amazon.com/AmazonS3/latest/s3-outposts/S3onOutposts.html}{What is S3 on Outposts?}
in the \emph{Amazon S3 User Guide}.}

\item{Key}{[required] Object key for which the action was initiated.}

\item{VersionId}{VersionId used to reference a specific version of the object.}

\item{RestoreRequest}{}

\item{RequestPayer}{}

\item{ChecksumAlgorithm}{Indicates the algorithm used to create the checksum for the object when
you use the SDK. This header will not provide any additional
functionality if you don't use the SDK. When you send this header, there
must be a corresponding \code{x-amz-checksum} or \code{x-amz-trailer} header sent.
Otherwise, Amazon S3 fails the request with the HTTP status code
\verb{400 Bad Request}. For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html}{Checking object integrity}
in the \emph{Amazon S3 User Guide}.

If you provide an individual checksum, Amazon S3 ignores any provided
\code{ChecksumAlgorithm} parameter.}

\item{ExpectedBucketOwner}{The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request fails
with the HTTP status code \verb{403 Forbidden} (access denied).}
}
\description{
This operation is not supported for directory buckets.

See \url{https://www.paws-r-sdk.com/docs/s3_restore_object/} for full documentation.
}
\keyword{internal}
