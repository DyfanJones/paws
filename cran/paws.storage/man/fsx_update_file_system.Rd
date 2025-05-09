% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fsx_operations.R
\name{fsx_update_file_system}
\alias{fsx_update_file_system}
\title{Use this operation to update the configuration of an existing Amazon FSx
file system}
\usage{
fsx_update_file_system(
  FileSystemId,
  ClientRequestToken = NULL,
  StorageCapacity = NULL,
  WindowsConfiguration = NULL,
  LustreConfiguration = NULL,
  OntapConfiguration = NULL,
  OpenZFSConfiguration = NULL,
  StorageType = NULL,
  FileSystemTypeVersion = NULL
)
}
\arguments{
\item{FileSystemId}{[required] The ID of the file system that you are updating.}

\item{ClientRequestToken}{A string of up to 63 ASCII characters that Amazon FSx uses to ensure
idempotent updates. This string is automatically filled on your behalf
when you use the Command Line Interface (CLI) or an Amazon Web Services
SDK.}

\item{StorageCapacity}{Use this parameter to increase the storage capacity of an FSx for
Windows File Server, FSx for Lustre, FSx for OpenZFS, or FSx for ONTAP
file system. Specifies the storage capacity target value, in GiB, to
increase the storage capacity for the file system that you're updating.

You can't make a storage capacity increase request if there is an
existing storage capacity increase request in progress.

For Lustre file systems, the storage capacity target value can be the
following:
\itemize{
\item For \code{SCRATCH_2}, \code{PERSISTENT_1}, and \verb{PERSISTENT_2 SSD} deployment
types, valid values are in multiples of 2400 GiB. The value must be
greater than the current storage capacity.
\item For \verb{PERSISTENT HDD} file systems, valid values are multiples of
6000 GiB for 12-MBps throughput per TiB file systems and multiples
of 1800 GiB for 40-MBps throughput per TiB file systems. The values
must be greater than the current storage capacity.
\item For \code{SCRATCH_1} file systems, you can't increase the storage
capacity.
}

For more information, see \href{https://docs.aws.amazon.com/fsx/latest/LustreGuide/managing-storage-capacity.html}{Managing storage and throughput capacity}
in the \emph{FSx for Lustre User Guide}.

For FSx for OpenZFS file systems, the storage capacity target value must
be at least 10 percent greater than the current storage capacity value.
For more information, see \href{https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/managing-storage-capacity.html}{Managing storage capacity}
in the \emph{FSx for OpenZFS User Guide}.

For Windows file systems, the storage capacity target value must be at
least 10 percent greater than the current storage capacity value. To
increase storage capacity, the file system must have at least 16 MBps of
throughput capacity. For more information, see \href{https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-storage-configuration.html#managing-storage-capacity}{Managing storage capacity}
in the \emph{Amazon FSxfor Windows File Server User Guide}.

For ONTAP file systems, the storage capacity target value must be at
least 10 percent greater than the current storage capacity value. For
more information, see \href{https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-storage-capacity.html}{Managing storage capacity and provisioned IOPS}
in the \emph{Amazon FSx for NetApp ONTAP User Guide}.}

\item{WindowsConfiguration}{The configuration updates for an Amazon FSx for Windows File Server file
system.}

\item{LustreConfiguration}{}

\item{OntapConfiguration}{}

\item{OpenZFSConfiguration}{The configuration updates for an FSx for OpenZFS file system.}

\item{StorageType}{}

\item{FileSystemTypeVersion}{The Lustre version you are updating an FSx for Lustre file system to.
Valid values are \code{2.12} and \code{2.15}. The value you choose must be newer
than the file system's current Lustre version.}
}
\description{
Use this operation to update the configuration of an existing Amazon FSx file system. You can update multiple properties in a single request.

See \url{https://www.paws-r-sdk.com/docs/fsx_update_file_system/} for full documentation.
}
\keyword{internal}
