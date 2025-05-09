% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpointsmsvoicev2_operations.R
\name{pinpointsmsvoicev2_delete_pool}
\alias{pinpointsmsvoicev2_delete_pool}
\title{Deletes an existing pool}
\usage{
pinpointsmsvoicev2_delete_pool(PoolId)
}
\arguments{
\item{PoolId}{[required] The PoolId or PoolArn of the pool to delete. You can use
\code{\link[=pinpointsmsvoicev2_describe_pools]{describe_pools}} to find the values
for PoolId and PoolArn .

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).}
}
\description{
Deletes an existing pool. Deleting a pool disassociates all origination identities from that pool.

See \url{https://www.paws-r-sdk.com/docs/pinpointsmsvoicev2_delete_pool/} for full documentation.
}
\keyword{internal}
