% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/storagegateway_operations.R
\name{storagegateway_create_cachedi_scsi_volume}
\alias{storagegateway_create_cachedi_scsi_volume}
\title{Creates a cached volume on a specified cached volume gateway}
\usage{
storagegateway_create_cachedi_scsi_volume(GatewayARN, VolumeSizeInBytes,
  SnapshotId, TargetName, SourceVolumeARN, NetworkInterfaceId,
  ClientToken, KMSEncrypted, KMSKey, Tags)
}
\arguments{
\item{GatewayARN}{[required]}

\item{VolumeSizeInBytes}{[required] The size of the volume in bytes.}

\item{SnapshotId}{The snapshot ID (e.g. \"snap-1122aabb\") of the snapshot to restore as
the new cached volume. Specify this field if you want to create the
iSCSI storage volume from a snapshot; otherwise, do not include this
field. To list snapshots for your account use
\href{https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html}{DescribeSnapshots}
in the \emph{Amazon Elastic Compute Cloud API Reference}.}

\item{TargetName}{[required] The name of the iSCSI target used by an initiator to connect to a volume
and used as a suffix for the target ARN. For example, specifying
\code{TargetName} as \emph{myvolume} results in the target ARN of
\verb{arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume}.
The target name must be unique across all volumes on a gateway.

If you don\'t specify a value, Storage Gateway uses the value that was
previously used for this volume as the new target name.}

\item{SourceVolumeARN}{The ARN for an existing volume. Specifying this ARN makes the new volume
into an exact copy of the specified existing volume\'s latest recovery
point. The \code{VolumeSizeInBytes} value for this new volume must be equal
to or larger than the size of the existing volume, in bytes.}

\item{NetworkInterfaceId}{[required] The network interface of the gateway on which to expose the iSCSI
target. Only IPv4 addresses are accepted. Use DescribeGatewayInformation
to get a list of the network interfaces available on a gateway.

Valid Values: A valid IP address.}

\item{ClientToken}{[required] A unique identifier that you use to retry a request. If you retry a
request, use the same \code{ClientToken} you specified in the initial
request.}

\item{KMSEncrypted}{Set to \code{true} to use Amazon S3 server-side encryption with your own AWS
KMS key, or \code{false} to use a key managed by Amazon S3. Optional.

Valid Values: \code{true} \\| \code{false}}

\item{KMSKey}{The Amazon Resource Name (ARN) of a symmetric customer master key (CMK)
used for Amazon S3 server-side encryption. Storage Gateway does not
support asymmetric CMKs. This value can only be set when \code{KMSEncrypted}
is \code{true}. Optional.}

\item{Tags}{A list of up to 50 tags that you can assign to a cached volume. Each tag
is a key-value pair.

Valid characters for key and value are letters, spaces, and numbers that
you can represent in UTF-8 format, and the following special characters:
\itemize{
\item 
\itemize{
\item = . \\_ : / @. The maximum length of a tag\'s key is 128 characters,
and the maximum length for a tag\'s value is 256 characters.
}
}}
}
\description{
Creates a cached volume on a specified cached volume gateway. This
operation is only supported in the cached volume gateway type.
}
\details{
Cache storage must be allocated to the gateway before you can create a
cached volume. Use the AddCache operation to add cache storage to a
gateway.

In the request, you must specify the gateway, size of the volume in
bytes, the iSCSI target name, an IP address on which to expose the
target, and a unique client token. In response, the gateway creates the
volume and returns information about it. This information includes the
volume Amazon Resource Name (ARN), its size, and the iSCSI target ARN
that initiators can use to connect to the volume target.

Optionally, you can provide the ARN for an existing volume as the
\code{SourceVolumeARN} for this cached volume, which creates an exact copy of
the existing volume's latest recovery point. The \code{VolumeSizeInBytes}
value must be equal to or larger than the size of the copied volume, in
bytes.
}
\section{Request syntax}{
\preformatted{svc$create_cachedi_scsi_volume(
  GatewayARN = "string",
  VolumeSizeInBytes = 123,
  SnapshotId = "string",
  TargetName = "string",
  SourceVolumeARN = "string",
  NetworkInterfaceId = "string",
  ClientToken = "string",
  KMSEncrypted = TRUE|FALSE,
  KMSKey = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\examples{
\dontrun{
# Creates a cached volume on a specified cached gateway.
svc$create_cachedi_scsi_volume(
  ClientToken = "cachedvol112233",
  GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
  NetworkInterfaceId = "10.1.1.1",
  SnapshotId = "snap-f47b7b94",
  TargetName = "my-volume",
  VolumeSizeInBytes = 536870912000
)
}

}
\keyword{internal}
