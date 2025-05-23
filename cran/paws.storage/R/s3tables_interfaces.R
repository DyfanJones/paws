# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common populate
#' @include s3tables_service.R
NULL

.s3tables$create_namespace_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string")), namespace = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$create_namespace_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(type = "string")), namespace = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$create_table_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string")), namespace = structure(logical(0), tags = list(location = "uri", locationName = "namespace", type = "string")), name = structure(logical(0), tags = list(type = "string")), format = structure(logical(0), tags = list(type = "string")), metadata = structure(list(iceberg = structure(list(schema = structure(list(fields = structure(list(structure(list(name = structure(logical(0), tags = list(type = "string")), type = structure(logical(0), tags = list(type = "string")), required = structure(logical(0), tags = list(type = "boolean", box = TRUE))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "structure", union = TRUE)), encryptionConfiguration = structure(list(sseAlgorithm = structure(logical(0), tags = list(type = "string")), kmsKeyArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$create_table_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableARN = structure(logical(0), tags = list(type = "string")), versionToken = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$create_table_bucket_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(name = structure(logical(0), tags = list(type = "string")), encryptionConfiguration = structure(list(sseAlgorithm = structure(logical(0), tags = list(type = "string")), kmsKeyArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$create_table_bucket_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(arn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$delete_namespace_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string")), namespace = structure(logical(0), tags = list(location = "uri", locationName = "namespace", type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$delete_namespace_output <- function(...) {
  list()
}

.s3tables$delete_table_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string")), namespace = structure(logical(0), tags = list(location = "uri", locationName = "namespace", type = "string")), name = structure(logical(0), tags = list(location = "uri", locationName = "name", type = "string")), versionToken = structure(logical(0), tags = list(location = "querystring", locationName = "versionToken", type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$delete_table_output <- function(...) {
  list()
}

.s3tables$delete_table_bucket_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$delete_table_bucket_output <- function(...) {
  list()
}

.s3tables$delete_table_bucket_encryption_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$delete_table_bucket_encryption_output <- function(...) {
  list()
}

.s3tables$delete_table_bucket_policy_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$delete_table_bucket_policy_output <- function(...) {
  list()
}

.s3tables$delete_table_policy_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string")), namespace = structure(logical(0), tags = list(location = "uri", locationName = "namespace", type = "string")), name = structure(logical(0), tags = list(location = "uri", locationName = "name", type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$delete_table_policy_output <- function(...) {
  list()
}

.s3tables$get_namespace_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string")), namespace = structure(logical(0), tags = list(location = "uri", locationName = "namespace", type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$get_namespace_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(namespace = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list")), createdAt = structure(logical(0), tags = list(type = "timestamp", timestampFormat = "iso8601")), createdBy = structure(logical(0), tags = list(type = "string")), ownerAccountId = structure(logical(0), tags = list(type = "string")), namespaceId = structure(logical(0), tags = list(type = "string")), tableBucketId = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$get_table_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string")), namespace = structure(logical(0), tags = list(location = "uri", locationName = "namespace", type = "string")), name = structure(logical(0), tags = list(location = "uri", locationName = "name", type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$get_table_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(name = structure(logical(0), tags = list(type = "string")), type = structure(logical(0), tags = list(type = "string")), tableARN = structure(logical(0), tags = list(type = "string")), namespace = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list")), namespaceId = structure(logical(0), tags = list(type = "string")), versionToken = structure(logical(0), tags = list(type = "string")), metadataLocation = structure(logical(0), tags = list(type = "string")), warehouseLocation = structure(logical(0), tags = list(type = "string")), createdAt = structure(logical(0), tags = list(type = "timestamp", timestampFormat = "iso8601")), createdBy = structure(logical(0), tags = list(type = "string")), managedByService = structure(logical(0), tags = list(type = "string")), modifiedAt = structure(logical(0), tags = list(type = "timestamp", timestampFormat = "iso8601")), modifiedBy = structure(logical(0), tags = list(type = "string")), ownerAccountId = structure(logical(0), tags = list(type = "string")), format = structure(logical(0), tags = list(type = "string")), tableBucketId = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$get_table_bucket_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$get_table_bucket_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(arn = structure(logical(0), tags = list(type = "string")), name = structure(logical(0), tags = list(type = "string")), ownerAccountId = structure(logical(0), tags = list(type = "string")), createdAt = structure(logical(0), tags = list(type = "timestamp", timestampFormat = "iso8601")), tableBucketId = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$get_table_bucket_encryption_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$get_table_bucket_encryption_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(encryptionConfiguration = structure(list(sseAlgorithm = structure(logical(0), tags = list(type = "string")), kmsKeyArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$get_table_bucket_maintenance_configuration_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$get_table_bucket_maintenance_configuration_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(type = "string")), configuration = structure(list(structure(list(status = structure(logical(0), tags = list(type = "string")), settings = structure(list(icebergUnreferencedFileRemoval = structure(list(unreferencedDays = structure(logical(0), tags = list(type = "integer", box = TRUE)), nonCurrentDays = structure(logical(0), tags = list(type = "integer", box = TRUE))), tags = list(type = "structure"))), tags = list(type = "structure", union = TRUE))), tags = list(type = "structure"))), tags = list(type = "map"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$get_table_bucket_policy_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$get_table_bucket_policy_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(resourcePolicy = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$get_table_encryption_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string")), namespace = structure(logical(0), tags = list(location = "uri", locationName = "namespace", type = "string")), name = structure(logical(0), tags = list(location = "uri", locationName = "name", type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$get_table_encryption_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(encryptionConfiguration = structure(list(sseAlgorithm = structure(logical(0), tags = list(type = "string")), kmsKeyArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$get_table_maintenance_configuration_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string")), namespace = structure(logical(0), tags = list(location = "uri", locationName = "namespace", type = "string")), name = structure(logical(0), tags = list(location = "uri", locationName = "name", type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$get_table_maintenance_configuration_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableARN = structure(logical(0), tags = list(type = "string")), configuration = structure(list(structure(list(status = structure(logical(0), tags = list(type = "string")), settings = structure(list(icebergCompaction = structure(list(targetFileSizeMB = structure(logical(0), tags = list(type = "integer", box = TRUE))), tags = list(type = "structure")), icebergSnapshotManagement = structure(list(minSnapshotsToKeep = structure(logical(0), tags = list(type = "integer", box = TRUE)), maxSnapshotAgeHours = structure(logical(0), tags = list(type = "integer", box = TRUE))), tags = list(type = "structure"))), tags = list(type = "structure", union = TRUE))), tags = list(type = "structure"))), tags = list(type = "map"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$get_table_maintenance_job_status_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string")), namespace = structure(logical(0), tags = list(location = "uri", locationName = "namespace", type = "string")), name = structure(logical(0), tags = list(location = "uri", locationName = "name", type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$get_table_maintenance_job_status_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableARN = structure(logical(0), tags = list(type = "string")), status = structure(list(structure(list(status = structure(logical(0), tags = list(type = "string")), lastRunTimestamp = structure(logical(0), tags = list(type = "timestamp", timestampFormat = "iso8601")), failureMessage = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "map"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$get_table_metadata_location_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string")), namespace = structure(logical(0), tags = list(location = "uri", locationName = "namespace", type = "string")), name = structure(logical(0), tags = list(location = "uri", locationName = "name", type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$get_table_metadata_location_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(versionToken = structure(logical(0), tags = list(type = "string")), metadataLocation = structure(logical(0), tags = list(type = "string")), warehouseLocation = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$get_table_policy_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string")), namespace = structure(logical(0), tags = list(location = "uri", locationName = "namespace", type = "string")), name = structure(logical(0), tags = list(location = "uri", locationName = "name", type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$get_table_policy_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(resourcePolicy = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$list_namespaces_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string")), prefix = structure(logical(0), tags = list(location = "querystring", locationName = "prefix", type = "string")), continuationToken = structure(logical(0), tags = list(location = "querystring", locationName = "continuationToken", type = "string")), maxNamespaces = structure(logical(0), tags = list(location = "querystring", locationName = "maxNamespaces", type = "integer", box = TRUE))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$list_namespaces_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(namespaces = structure(list(structure(list(namespace = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list")), createdAt = structure(logical(0), tags = list(type = "timestamp", timestampFormat = "iso8601")), createdBy = structure(logical(0), tags = list(type = "string")), ownerAccountId = structure(logical(0), tags = list(type = "string")), namespaceId = structure(logical(0), tags = list(type = "string")), tableBucketId = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list")), continuationToken = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$list_table_buckets_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(prefix = structure(logical(0), tags = list(location = "querystring", locationName = "prefix", type = "string")), continuationToken = structure(logical(0), tags = list(location = "querystring", locationName = "continuationToken", type = "string")), maxBuckets = structure(logical(0), tags = list(location = "querystring", locationName = "maxBuckets", type = "integer", box = TRUE))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$list_table_buckets_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBuckets = structure(list(structure(list(arn = structure(logical(0), tags = list(type = "string")), name = structure(logical(0), tags = list(type = "string")), ownerAccountId = structure(logical(0), tags = list(type = "string")), createdAt = structure(logical(0), tags = list(type = "timestamp", timestampFormat = "iso8601")), tableBucketId = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list")), continuationToken = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$list_tables_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string")), namespace = structure(logical(0), tags = list(location = "querystring", locationName = "namespace", type = "string")), prefix = structure(logical(0), tags = list(location = "querystring", locationName = "prefix", type = "string")), continuationToken = structure(logical(0), tags = list(location = "querystring", locationName = "continuationToken", type = "string")), maxTables = structure(logical(0), tags = list(location = "querystring", locationName = "maxTables", type = "integer", box = TRUE))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$list_tables_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tables = structure(list(structure(list(namespace = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list")), name = structure(logical(0), tags = list(type = "string")), type = structure(logical(0), tags = list(type = "string")), tableARN = structure(logical(0), tags = list(type = "string")), createdAt = structure(logical(0), tags = list(type = "timestamp", timestampFormat = "iso8601")), modifiedAt = structure(logical(0), tags = list(type = "timestamp", timestampFormat = "iso8601")), namespaceId = structure(logical(0), tags = list(type = "string")), tableBucketId = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list")), continuationToken = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$put_table_bucket_encryption_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string")), encryptionConfiguration = structure(list(sseAlgorithm = structure(logical(0), tags = list(type = "string")), kmsKeyArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$put_table_bucket_encryption_output <- function(...) {
  list()
}

.s3tables$put_table_bucket_maintenance_configuration_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string")), type = structure(logical(0), tags = list(location = "uri", locationName = "type", type = "string")), value = structure(list(status = structure(logical(0), tags = list(type = "string")), settings = structure(list(icebergUnreferencedFileRemoval = structure(list(unreferencedDays = structure(logical(0), tags = list(type = "integer", box = TRUE)), nonCurrentDays = structure(logical(0), tags = list(type = "integer", box = TRUE))), tags = list(type = "structure"))), tags = list(type = "structure", union = TRUE))), tags = list(type = "structure"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$put_table_bucket_maintenance_configuration_output <- function(...) {
  list()
}

.s3tables$put_table_bucket_policy_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string")), resourcePolicy = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$put_table_bucket_policy_output <- function(...) {
  list()
}

.s3tables$put_table_maintenance_configuration_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string")), namespace = structure(logical(0), tags = list(location = "uri", locationName = "namespace", type = "string")), name = structure(logical(0), tags = list(location = "uri", locationName = "name", type = "string")), type = structure(logical(0), tags = list(location = "uri", locationName = "type", type = "string")), value = structure(list(status = structure(logical(0), tags = list(type = "string")), settings = structure(list(icebergCompaction = structure(list(targetFileSizeMB = structure(logical(0), tags = list(type = "integer", box = TRUE))), tags = list(type = "structure")), icebergSnapshotManagement = structure(list(minSnapshotsToKeep = structure(logical(0), tags = list(type = "integer", box = TRUE)), maxSnapshotAgeHours = structure(logical(0), tags = list(type = "integer", box = TRUE))), tags = list(type = "structure"))), tags = list(type = "structure", union = TRUE))), tags = list(type = "structure"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$put_table_maintenance_configuration_output <- function(...) {
  list()
}

.s3tables$put_table_policy_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string")), namespace = structure(logical(0), tags = list(location = "uri", locationName = "namespace", type = "string")), name = structure(logical(0), tags = list(location = "uri", locationName = "name", type = "string")), resourcePolicy = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$put_table_policy_output <- function(...) {
  list()
}

.s3tables$rename_table_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string")), namespace = structure(logical(0), tags = list(location = "uri", locationName = "namespace", type = "string")), name = structure(logical(0), tags = list(location = "uri", locationName = "name", type = "string")), newNamespaceName = structure(logical(0), tags = list(type = "string")), newName = structure(logical(0), tags = list(type = "string")), versionToken = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$rename_table_output <- function(...) {
  list()
}

.s3tables$update_table_metadata_location_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(tableBucketARN = structure(logical(0), tags = list(location = "uri", locationName = "tableBucketARN", type = "string")), namespace = structure(logical(0), tags = list(location = "uri", locationName = "namespace", type = "string")), name = structure(logical(0), tags = list(location = "uri", locationName = "name", type = "string")), versionToken = structure(logical(0), tags = list(type = "string")), metadataLocation = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.s3tables$update_table_metadata_location_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(name = structure(logical(0), tags = list(type = "string")), tableARN = structure(logical(0), tags = list(type = "string")), namespace = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list")), versionToken = structure(logical(0), tags = list(type = "string")), metadataLocation = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}
