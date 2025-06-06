% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_copy_object}
\alias{s3_copy_object}
\title{Creates a copy of an object that is already stored in Amazon S3}
\usage{
s3_copy_object(
  ACL = NULL,
  Bucket,
  CacheControl = NULL,
  ChecksumAlgorithm = NULL,
  ContentDisposition = NULL,
  ContentEncoding = NULL,
  ContentLanguage = NULL,
  ContentType = NULL,
  CopySource,
  CopySourceIfMatch = NULL,
  CopySourceIfModifiedSince = NULL,
  CopySourceIfNoneMatch = NULL,
  CopySourceIfUnmodifiedSince = NULL,
  Expires = NULL,
  GrantFullControl = NULL,
  GrantRead = NULL,
  GrantReadACP = NULL,
  GrantWriteACP = NULL,
  Key,
  Metadata = NULL,
  MetadataDirective = NULL,
  TaggingDirective = NULL,
  ServerSideEncryption = NULL,
  StorageClass = NULL,
  WebsiteRedirectLocation = NULL,
  SSECustomerAlgorithm = NULL,
  SSECustomerKey = NULL,
  SSECustomerKeyMD5 = NULL,
  SSEKMSKeyId = NULL,
  SSEKMSEncryptionContext = NULL,
  BucketKeyEnabled = NULL,
  CopySourceSSECustomerAlgorithm = NULL,
  CopySourceSSECustomerKey = NULL,
  CopySourceSSECustomerKeyMD5 = NULL,
  RequestPayer = NULL,
  Tagging = NULL,
  ObjectLockMode = NULL,
  ObjectLockRetainUntilDate = NULL,
  ObjectLockLegalHoldStatus = NULL,
  ExpectedBucketOwner = NULL,
  ExpectedSourceBucketOwner = NULL
)
}
\arguments{
\item{ACL}{The canned access control list (ACL) to apply to the object.

When you copy an object, the ACL metadata is not preserved and is set to
\code{private} by default. Only the owner has full access control. To
override the default ACL setting, specify a new ACL when you generate a
copy request. For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html}{Using ACLs}.

If the destination bucket that you're copying objects to uses the bucket
owner enforced setting for S3 Object Ownership, ACLs are disabled and no
longer affect permissions. Buckets that use this setting only accept
\code{PUT} requests that don't specify an ACL or \code{PUT} requests that specify
bucket owner full control ACLs, such as the \code{bucket-owner-full-control}
canned ACL or an equivalent form of this ACL expressed in the XML
format. For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html}{Controlling ownership of objects and disabling ACLs}
in the \emph{Amazon S3 User Guide}.
\itemize{
\item If your destination bucket uses the bucket owner enforced setting
for Object Ownership, all objects written to the bucket by any
account will be owned by the bucket owner.
\item This functionality is not supported for directory buckets.
\item This functionality is not supported for Amazon S3 on Outposts.
}}

\item{Bucket}{[required] The name of the destination bucket.

\strong{Directory buckets} - When you use this operation with a directory
bucket, you must use virtual-hosted-style requests in the format
\code{ Bucket-name.s3express-zone-id.region-code.amazonaws.com}. Path-style
requests are not supported. Directory bucket names must be unique in the
chosen Zone (Availability Zone or Local Zone). Bucket names must follow
the format \code{ bucket-base-name--zone-id--x-s3} (for example,
\code{ amzn-s3-demo-bucket--usw2-az1--x-s3}). For information about bucket
naming restrictions, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html}{Directory bucket naming rules}
in the \emph{Amazon S3 User Guide}.

Copying objects across different Amazon Web Services Regions isn't
supported when the source or destination bucket is in Amazon Web
Services Local Zones. The source and destination buckets must have the
same parent Amazon Web Services Region. Otherwise, you get an HTTP
\verb{400 Bad Request} error with the error code \code{InvalidRequest}.

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
must use the Outpost bucket access point ARN or the access point alias
for the destination bucket. You can only copy objects within the same
Outpost bucket. It's not supported to copy objects across different
Amazon Web Services Outposts, between buckets on the same Outposts, or
between Outposts buckets and any other bucket types. For more
information about S3 on Outposts, see \href{https://docs.aws.amazon.com/AmazonS3/latest/s3-outposts/S3onOutposts.html}{What is S3 on Outposts?}
in the \emph{S3 on Outposts guide}. When you use this action with S3 on
Outposts through the REST API, you must direct requests to the S3 on
Outposts hostname, in the format
\code{ AccessPointName-AccountId.outpostID.s3-outposts.Region.amazonaws.com}.
The hostname isn't required when you use the Amazon Web Services CLI or
SDKs.}

\item{CacheControl}{Specifies the caching behavior along the request/reply chain.}

\item{ChecksumAlgorithm}{Indicates the algorithm that you want Amazon S3 to use to create the
checksum for the object. For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html}{Checking object integrity}
in the \emph{Amazon S3 User Guide}.

When you copy an object, if the source object has a checksum, that
checksum value will be copied to the new object by default. If the
\code{\link[=s3_copy_object]{copy_object}} request does not include this
\code{x-amz-checksum-algorithm} header, the checksum algorithm will be copied
from the source object to the destination object (if it's present on the
source object). You can optionally specify a different checksum
algorithm to use with the \code{x-amz-checksum-algorithm} header.
Unrecognized or unsupported values will respond with the HTTP status
code \verb{400 Bad Request}.

For directory buckets, when you use Amazon Web Services SDKs, \code{CRC32} is
the default checksum algorithm that's used for performance.}

\item{ContentDisposition}{Specifies presentational information for the object. Indicates whether
an object should be displayed in a web browser or downloaded as a file.
It allows specifying the desired filename for the downloaded file.}

\item{ContentEncoding}{Specifies what content encodings have been applied to the object and
thus what decoding mechanisms must be applied to obtain the media-type
referenced by the Content-Type header field.

For directory buckets, only the \code{aws-chunked} value is supported in this
header field.}

\item{ContentLanguage}{The language the content is in.}

\item{ContentType}{A standard MIME type that describes the format of the object data.}

\item{CopySource}{[required] Specifies the source object for the copy operation. The source object
can be up to 5 GB. If the source object is an object that was uploaded
by using a multipart upload, the object copy will be a single part
object after the source object is copied to the destination bucket.

You specify the value of the copy source in one of two formats,
depending on whether you want to access the source object through an
\href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html}{access point}:
\itemize{
\item For objects not accessed through an access point, specify the name
of the source bucket and the key of the source object, separated by
a slash (/). For example, to copy the object \code{reports/january.pdf}
from the general purpose bucket \code{awsexamplebucket}, use
\code{awsexamplebucket/reports/january.pdf}. The value must be
URL-encoded. To copy the object \code{reports/january.pdf} from the
directory bucket \code{awsexamplebucket--use1-az5--x-s3}, use
\code{awsexamplebucket--use1-az5--x-s3/reports/january.pdf}. The value
must be URL-encoded.
\item For objects accessed through access points, specify the Amazon
Resource Name (ARN) of the object as accessed through the access
point, in the format
\verb{arn:aws:s3:<Region>:<account-id>:accesspoint/<access-point-name>/object/<key>}.
For example, to copy the object \code{reports/january.pdf} through access
point \code{my-access-point} owned by account \code{123456789012} in Region
\code{us-west-2}, use the URL encoding of
\code{arn:aws:s3:us-west-2:123456789012:accesspoint/my-access-point/object/reports/january.pdf}.
The value must be URL encoded.
\itemize{
\item Amazon S3 supports copy operations using Access points only when
the source and destination buckets are in the same Amazon Web
Services Region.
\item Access points are not supported by directory buckets.
}

Alternatively, for objects accessed through Amazon S3 on Outposts,
specify the ARN of the object as accessed in the format
\verb{arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/object/<key>}.
For example, to copy the object \code{reports/january.pdf} through
outpost \code{my-outpost} owned by account \code{123456789012} in Region
\code{us-west-2}, use the URL encoding of
\code{arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/object/reports/january.pdf}.
The value must be URL-encoded.
}

If your source bucket versioning is enabled, the \code{x-amz-copy-source}
header by default identifies the current version of an object to copy.
If the current version is a delete marker, Amazon S3 behaves as if the
object was deleted. To copy a different version, use the \code{versionId}
query parameter. Specifically, append \verb{?versionId=<version-id>} to the
value (for example,
\code{awsexamplebucket/reports/january.pdf?versionId=QUpfdndhfd8438MNFDN93jdnJFkdmqnh893}).
If you don't specify a version ID, Amazon S3 copies the latest version
of the source object.

If you enable versioning on the destination bucket, Amazon S3 generates
a unique version ID for the copied object. This version ID is different
from the version ID of the source object. Amazon S3 returns the version
ID of the copied object in the \code{x-amz-version-id} response header in the
response.

If you do not enable versioning or suspend it on the destination bucket,
the version ID that Amazon S3 generates in the \code{x-amz-version-id}
response header is always null.

\strong{Directory buckets} - S3 Versioning isn't enabled and supported for
directory buckets.}

\item{CopySourceIfMatch}{Copies the object if its entity tag (ETag) matches the specified tag.

If both the \verb{x-amz-copy-source-if-match} and
\verb{x-amz-copy-source-if-unmodified-since} headers are present in the
request and evaluate as follows, Amazon S3 returns \verb{200 OK} and copies
the data:
\itemize{
\item \verb{x-amz-copy-source-if-match} condition evaluates to true
\item \verb{x-amz-copy-source-if-unmodified-since} condition evaluates to false
}}

\item{CopySourceIfModifiedSince}{Copies the object if it has been modified since the specified time.

If both the \verb{x-amz-copy-source-if-none-match} and
\verb{x-amz-copy-source-if-modified-since} headers are present in the request
and evaluate as follows, Amazon S3 returns the \verb{412 Precondition Failed}
response code:
\itemize{
\item \verb{x-amz-copy-source-if-none-match} condition evaluates to false
\item \verb{x-amz-copy-source-if-modified-since} condition evaluates to true
}}

\item{CopySourceIfNoneMatch}{Copies the object if its entity tag (ETag) is different than the
specified ETag.

If both the \verb{x-amz-copy-source-if-none-match} and
\verb{x-amz-copy-source-if-modified-since} headers are present in the request
and evaluate as follows, Amazon S3 returns the \verb{412 Precondition Failed}
response code:
\itemize{
\item \verb{x-amz-copy-source-if-none-match} condition evaluates to false
\item \verb{x-amz-copy-source-if-modified-since} condition evaluates to true
}}

\item{CopySourceIfUnmodifiedSince}{Copies the object if it hasn't been modified since the specified time.

If both the \verb{x-amz-copy-source-if-match} and
\verb{x-amz-copy-source-if-unmodified-since} headers are present in the
request and evaluate as follows, Amazon S3 returns \verb{200 OK} and copies
the data:
\itemize{
\item \verb{x-amz-copy-source-if-match} condition evaluates to true
\item \verb{x-amz-copy-source-if-unmodified-since} condition evaluates to false
}}

\item{Expires}{The date and time at which the object is no longer cacheable.}

\item{GrantFullControl}{Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the
object.
\itemize{
\item This functionality is not supported for directory buckets.
\item This functionality is not supported for Amazon S3 on Outposts.
}}

\item{GrantRead}{Allows grantee to read the object data and its metadata.
\itemize{
\item This functionality is not supported for directory buckets.
\item This functionality is not supported for Amazon S3 on Outposts.
}}

\item{GrantReadACP}{Allows grantee to read the object ACL.
\itemize{
\item This functionality is not supported for directory buckets.
\item This functionality is not supported for Amazon S3 on Outposts.
}}

\item{GrantWriteACP}{Allows grantee to write the ACL for the applicable object.
\itemize{
\item This functionality is not supported for directory buckets.
\item This functionality is not supported for Amazon S3 on Outposts.
}}

\item{Key}{[required] The key of the destination object.}

\item{Metadata}{A map of metadata to store with the object in S3.}

\item{MetadataDirective}{Specifies whether the metadata is copied from the source object or
replaced with metadata that's provided in the request. When copying an
object, you can preserve all metadata (the default) or specify new
metadata. If this header isn’t specified, \code{COPY} is the default
behavior.

\strong{General purpose bucket} - For general purpose buckets, when you grant
permissions, you can use the \code{s3:x-amz-metadata-directive} condition key
to enforce certain metadata behavior when objects are uploaded. For more
information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/amazon-s3-policy-keys.html}{Amazon S3 condition key examples}
in the \emph{Amazon S3 User Guide}.

\code{x-amz-website-redirect-location} is unique to each object and is not
copied when using the \code{x-amz-metadata-directive} header. To copy the
value, you must specify \code{x-amz-website-redirect-location} in the request
header.}

\item{TaggingDirective}{Specifies whether the object tag-set is copied from the source object or
replaced with the tag-set that's provided in the request.

The default value is \code{COPY}.

\strong{Directory buckets} - For directory buckets in a
\code{\link[=s3_copy_object]{copy_object}} operation, only the empty tag-set is
supported. Any requests that attempt to write non-empty tags into
directory buckets will receive a \verb{501 Not Implemented} status code. When
the destination bucket is a directory bucket, you will receive a
\verb{501 Not Implemented} response in any of the following situations:
\itemize{
\item When you attempt to \code{COPY} the tag-set from an S3 source object that
has non-empty tags.
\item When you attempt to \code{REPLACE} the tag-set of a source object and set
a non-empty value to \code{x-amz-tagging}.
\item When you don't set the \code{x-amz-tagging-directive} header and the
source object has non-empty tags. This is because the default value
of \code{x-amz-tagging-directive} is \code{COPY}.
}

Because only the empty tag-set is supported for directory buckets in a
\code{\link[=s3_copy_object]{copy_object}} operation, the following situations are
allowed:
\itemize{
\item When you attempt to \code{COPY} the tag-set from a directory bucket
source object that has no tags to a general purpose bucket. It
copies an empty tag-set to the destination object.
\item When you attempt to \code{REPLACE} the tag-set of a directory bucket
source object and set the \code{x-amz-tagging} value of the directory
bucket destination object to empty.
\item When you attempt to \code{REPLACE} the tag-set of a general purpose
bucket source object that has non-empty tags and set the
\code{x-amz-tagging} value of the directory bucket destination object to
empty.
\item When you attempt to \code{REPLACE} the tag-set of a directory bucket
source object and don't set the \code{x-amz-tagging} value of the
directory bucket destination object. This is because the default
value of \code{x-amz-tagging} is the empty value.
}}

\item{ServerSideEncryption}{The server-side encryption algorithm used when storing this object in
Amazon S3. Unrecognized or unsupported values won’t write a destination
object and will receive a \verb{400 Bad Request} response.

Amazon S3 automatically encrypts all new objects that are copied to an
S3 bucket. When copying an object, if you don't specify encryption
information in your copy request, the encryption setting of the target
object is set to the default encryption configuration of the destination
bucket. By default, all buckets have a base level of encryption
configuration that uses server-side encryption with Amazon S3 managed
keys (SSE-S3). If the destination bucket has a different default
encryption configuration, Amazon S3 uses the corresponding encryption
key to encrypt the target object copy.

With server-side encryption, Amazon S3 encrypts your data as it writes
your data to disks in its data centers and decrypts the data when you
access it. For more information about server-side encryption, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/serv-side-encryption.html}{Using Server-Side Encryption}
in the \emph{Amazon S3 User Guide}.

\strong{General purpose buckets}
\itemize{
\item For general purpose buckets, there are the following supported
options for server-side encryption: server-side encryption with Key
Management Service (KMS) keys (SSE-KMS), dual-layer server-side
encryption with Amazon Web Services KMS keys (DSSE-KMS), and
server-side encryption with customer-provided encryption keys
(SSE-C). Amazon S3 uses the corresponding KMS key, or a
customer-provided key to encrypt the target object copy.
\item When you perform a \code{\link[=s3_copy_object]{copy_object}} operation, if you
want to use a different type of encryption setting for the target
object, you can specify appropriate encryption-related headers to
encrypt the target object with an Amazon S3 managed key, a KMS key,
or a customer-provided key. If the encryption setting in your
request is different from the default encryption configuration of
the destination bucket, the encryption setting in your request takes
precedence.
}

\strong{Directory buckets}
\itemize{
\item For directory buckets, there are only two supported options for
server-side encryption: server-side encryption with Amazon S3
managed keys (SSE-S3) (\code{AES256}) and server-side encryption with KMS
keys (SSE-KMS) (\code{aws:kms}). We recommend that the bucket's default
encryption uses the desired encryption configuration and you don't
override the bucket default encryption in your
\code{\link[=s3_create_session]{create_session}} requests or \code{PUT} object
requests. Then, new objects are automatically encrypted with the
desired encryption settings. For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/}{Protecting data with server-side encryption}
in the \emph{Amazon S3 User Guide}. For more information about the
encryption overriding behaviors in directory buckets, see
\href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-specifying-kms-encryption.html}{Specifying server-side encryption with KMS for new object uploads}.
\item To encrypt new object copies to a directory bucket with SSE-KMS, we
recommend you specify SSE-KMS as the directory bucket's default
encryption configuration with a KMS key (specifically, a \href{https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk}{customer managed key}).
The \href{https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk}{Amazon Web Services managed key}
(\code{aws/s3}) isn't supported. Your SSE-KMS configuration can only
support 1 \href{https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk}{customer managed key}
per directory bucket for the lifetime of the bucket. After you
specify a customer managed key for SSE-KMS, you can't override the
customer managed key for the bucket's SSE-KMS configuration. Then,
when you perform a \code{\link[=s3_copy_object]{copy_object}} operation and
want to specify server-side encryption settings for new object
copies with SSE-KMS in the encryption-related request headers, you
must ensure the encryption key is the same customer managed key that
you specified for the directory bucket's default encryption
configuration.
}}

\item{StorageClass}{If the \code{x-amz-storage-class} header is not used, the copied object will
be stored in the \code{STANDARD} Storage Class by default. The \code{STANDARD}
storage class provides high durability and high availability. Depending
on performance needs, you can specify a different Storage Class.
\itemize{
\item \strong{Directory buckets} - Directory buckets only support
\code{EXPRESS_ONEZONE} (the S3 Express One Zone storage class) in
Availability Zones and \code{ONEZONE_IA} (the S3 One Zone-Infrequent
Access storage class) in Dedicated Local Zones. Unsupported storage
class values won't write a destination object and will respond with
the HTTP status code \verb{400 Bad Request}.
\item \strong{Amazon S3 on Outposts} - S3 on Outposts only uses the \code{OUTPOSTS}
Storage Class.
}

You can use the \code{\link[=s3_copy_object]{copy_object}} action to change the
storage class of an object that is already stored in Amazon S3 by using
the \code{x-amz-storage-class} header. For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-class-intro.html}{Storage Classes}
in the \emph{Amazon S3 User Guide}.

Before using an object as a source object for the copy operation, you
must restore a copy of it if it meets any of the following conditions:
\itemize{
\item The storage class of the source object is \code{GLACIER} or
\code{DEEP_ARCHIVE}.
\item The storage class of the source object is \code{INTELLIGENT_TIERING} and
it's \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/intelligent-tiering-overview.html#intel-tiering-tier-definition}{S3 Intelligent-Tiering access tier}
is \verb{Archive Access} or \verb{Deep Archive Access}.
}

For more information, see \code{\link[=s3_restore_object]{restore_object}} and
\href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/copy-object.html}{Copying Objects}
in the \emph{Amazon S3 User Guide}.}

\item{WebsiteRedirectLocation}{If the destination bucket is configured as a website, redirects requests
for this object copy to another object in the same bucket or to an
external URL. Amazon S3 stores the value of this header in the object
metadata. This value is unique to each object and is not copied when
using the \code{x-amz-metadata-directive} header. Instead, you may opt to
provide this header in combination with the \code{x-amz-metadata-directive}
header.

This functionality is not supported for directory buckets.}

\item{SSECustomerAlgorithm}{Specifies the algorithm to use when encrypting the object (for example,
\code{AES256}).

When you perform a \code{\link[=s3_copy_object]{copy_object}} operation, if you
want to use a different type of encryption setting for the target
object, you can specify appropriate encryption-related headers to
encrypt the target object with an Amazon S3 managed key, a KMS key, or a
customer-provided key. If the encryption setting in your request is
different from the default encryption configuration of the destination
bucket, the encryption setting in your request takes precedence.

This functionality is not supported when the destination bucket is a
directory bucket.}

\item{SSECustomerKey}{Specifies the customer-provided encryption key for Amazon S3 to use in
encrypting data. This value is used to store the object and then it is
discarded. Amazon S3 does not store the encryption key. The key must be
appropriate for use with the algorithm specified in the
\code{x-amz-server-side-encryption-customer-algorithm} header.

This functionality is not supported when the destination bucket is a
directory bucket.}

\item{SSECustomerKeyMD5}{Specifies the 128-bit MD5 digest of the encryption key according to RFC
1321. Amazon S3 uses this header for a message integrity check to ensure
that the encryption key was transmitted without error.

This functionality is not supported when the destination bucket is a
directory bucket.}

\item{SSEKMSKeyId}{Specifies the KMS key ID (Key ID, Key ARN, or Key Alias) to use for
object encryption. All GET and PUT requests for an object protected by
KMS will fail if they're not made via SSL or using SigV4. For
information about configuring any of the officially supported Amazon Web
Services SDKs and Amazon Web Services CLI, see \href{https://docs.aws.amazon.com/AmazonS3/latest/API/#specify-signature-version}{Specifying the Signature Version in Request Authentication}
in the \emph{Amazon S3 User Guide}.

\strong{Directory buckets} - To encrypt data using SSE-KMS, it's recommended
to specify the \code{x-amz-server-side-encryption} header to \code{aws:kms}. Then,
the \code{x-amz-server-side-encryption-aws-kms-key-id} header implicitly uses
the bucket's default KMS customer managed key ID. If you want to
explicitly set the \code{ x-amz-server-side-encryption-aws-kms-key-id}
header, it must match the bucket's default customer managed key (using
key ID or ARN, not alias). Your SSE-KMS configuration can only support 1
\href{https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk}{customer managed key}
per directory bucket's lifetime. The \href{https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk}{Amazon Web Services managed key}
(\code{aws/s3}) isn't supported. Incorrect key specification results in an
HTTP \verb{400 Bad Request} error.}

\item{SSEKMSEncryptionContext}{Specifies the Amazon Web Services KMS Encryption Context as an
additional encryption context to use for the destination object
encryption. The value of this header is a base64-encoded UTF-8 string
holding JSON with the encryption context key-value pairs.

\strong{General purpose buckets} - This value must be explicitly added to
specify encryption context for \code{\link[=s3_copy_object]{copy_object}} requests
if you want an additional encryption context for your destination
object. The additional encryption context of the source object won't be
copied to the destination object. For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html#encryption-context}{Encryption context}
in the \emph{Amazon S3 User Guide}.

\strong{Directory buckets} - You can optionally provide an explicit
encryption context value. The value must match the default encryption
context - the bucket Amazon Resource Name (ARN). An additional
encryption context value is not supported.}

\item{BucketKeyEnabled}{Specifies whether Amazon S3 should use an S3 Bucket Key for object
encryption with server-side encryption using Key Management Service
(KMS) keys (SSE-KMS). If a target object uses SSE-KMS, you can enable an
S3 Bucket Key for the object.

Setting this header to \code{true} causes Amazon S3 to use an S3 Bucket Key
for object encryption with SSE-KMS. Specifying this header with a COPY
action doesn’t affect bucket-level settings for S3 Bucket Key.

For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-key.html}{Amazon S3 Bucket Keys}
in the \emph{Amazon S3 User Guide}.

\strong{Directory buckets} - S3 Bucket Keys aren't supported, when you copy
SSE-KMS encrypted objects from general purpose buckets to directory
buckets, from directory buckets to general purpose buckets, or between
directory buckets, through \code{\link[=s3_copy_object]{copy_object}}. In this
case, Amazon S3 makes a call to KMS every time a copy request is made
for a KMS-encrypted object.}

\item{CopySourceSSECustomerAlgorithm}{Specifies the algorithm to use when decrypting the source object (for
example, \code{AES256}).

If the source object for the copy is stored in Amazon S3 using SSE-C,
you must provide the necessary encryption information in your request so
that Amazon S3 can decrypt the object for copying.

This functionality is not supported when the source object is in a
directory bucket.}

\item{CopySourceSSECustomerKey}{Specifies the customer-provided encryption key for Amazon S3 to use to
decrypt the source object. The encryption key provided in this header
must be the same one that was used when the source object was created.

If the source object for the copy is stored in Amazon S3 using SSE-C,
you must provide the necessary encryption information in your request so
that Amazon S3 can decrypt the object for copying.

This functionality is not supported when the source object is in a
directory bucket.}

\item{CopySourceSSECustomerKeyMD5}{Specifies the 128-bit MD5 digest of the encryption key according to RFC
1321. Amazon S3 uses this header for a message integrity check to ensure
that the encryption key was transmitted without error.

If the source object for the copy is stored in Amazon S3 using SSE-C,
you must provide the necessary encryption information in your request so
that Amazon S3 can decrypt the object for copying.

This functionality is not supported when the source object is in a
directory bucket.}

\item{RequestPayer}{}

\item{Tagging}{The tag-set for the object copy in the destination bucket. This value
must be used in conjunction with the \code{x-amz-tagging-directive} if you
choose \code{REPLACE} for the \code{x-amz-tagging-directive}. If you choose \code{COPY}
for the \code{x-amz-tagging-directive}, you don't need to set the
\code{x-amz-tagging} header, because the tag-set will be copied from the
source object directly. The tag-set must be encoded as URL Query
parameters.

The default value is the empty value.

\strong{Directory buckets} - For directory buckets in a
\code{\link[=s3_copy_object]{copy_object}} operation, only the empty tag-set is
supported. Any requests that attempt to write non-empty tags into
directory buckets will receive a \verb{501 Not Implemented} status code. When
the destination bucket is a directory bucket, you will receive a
\verb{501 Not Implemented} response in any of the following situations:
\itemize{
\item When you attempt to \code{COPY} the tag-set from an S3 source object that
has non-empty tags.
\item When you attempt to \code{REPLACE} the tag-set of a source object and set
a non-empty value to \code{x-amz-tagging}.
\item When you don't set the \code{x-amz-tagging-directive} header and the
source object has non-empty tags. This is because the default value
of \code{x-amz-tagging-directive} is \code{COPY}.
}

Because only the empty tag-set is supported for directory buckets in a
\code{\link[=s3_copy_object]{copy_object}} operation, the following situations are
allowed:
\itemize{
\item When you attempt to \code{COPY} the tag-set from a directory bucket
source object that has no tags to a general purpose bucket. It
copies an empty tag-set to the destination object.
\item When you attempt to \code{REPLACE} the tag-set of a directory bucket
source object and set the \code{x-amz-tagging} value of the directory
bucket destination object to empty.
\item When you attempt to \code{REPLACE} the tag-set of a general purpose
bucket source object that has non-empty tags and set the
\code{x-amz-tagging} value of the directory bucket destination object to
empty.
\item When you attempt to \code{REPLACE} the tag-set of a directory bucket
source object and don't set the \code{x-amz-tagging} value of the
directory bucket destination object. This is because the default
value of \code{x-amz-tagging} is the empty value.
}}

\item{ObjectLockMode}{The Object Lock mode that you want to apply to the object copy.

This functionality is not supported for directory buckets.}

\item{ObjectLockRetainUntilDate}{The date and time when you want the Object Lock of the object copy to
expire.

This functionality is not supported for directory buckets.}

\item{ObjectLockLegalHoldStatus}{Specifies whether you want to apply a legal hold to the object copy.

This functionality is not supported for directory buckets.}

\item{ExpectedBucketOwner}{The account ID of the expected destination bucket owner. If the account
ID that you provide does not match the actual owner of the destination
bucket, the request fails with the HTTP status code \verb{403 Forbidden}
(access denied).}

\item{ExpectedSourceBucketOwner}{The account ID of the expected source bucket owner. If the account ID
that you provide does not match the actual owner of the source bucket,
the request fails with the HTTP status code \verb{403 Forbidden} (access
denied).}
}
\description{
Creates a copy of an object that is already stored in Amazon S3.

See \url{https://www.paws-r-sdk.com/docs/s3_copy_object/} for full documentation.
}
\keyword{internal}
