# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common populate
#' @include kinesisanalytics_service.R
NULL

.kinesisanalytics$add_application_cloud_watch_logging_option_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ApplicationName = structure(logical(0), tags = list(type = "string")), CurrentApplicationVersionId = structure(logical(0), tags = list(type = "long")), CloudWatchLoggingOption = structure(list(LogStreamARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$add_application_cloud_watch_logging_option_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$add_application_input_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ApplicationName = structure(logical(0), tags = list(type = "string")), CurrentApplicationVersionId = structure(logical(0), tags = list(type = "long")), Input = structure(list(NamePrefix = structure(logical(0), tags = list(type = "string")), InputProcessingConfiguration = structure(list(InputLambdaProcessor = structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure")), KinesisStreamsInput = structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), KinesisFirehoseInput = structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), InputParallelism = structure(list(Count = structure(logical(0), tags = list(type = "integer"))), tags = list(type = "structure")), InputSchema = structure(list(RecordFormat = structure(list(RecordFormatType = structure(logical(0), tags = list(type = "string")), MappingParameters = structure(list(JSONMappingParameters = structure(list(RecordRowPath = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), CSVMappingParameters = structure(list(RecordRowDelimiter = structure(logical(0), tags = list(type = "string")), RecordColumnDelimiter = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "structure")), RecordEncoding = structure(logical(0), tags = list(type = "string")), RecordColumns = structure(list(structure(list(Name = structure(logical(0), tags = list(type = "string")), Mapping = structure(logical(0), tags = list(type = "string")), SqlType = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$add_application_input_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$add_application_input_processing_configuration_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ApplicationName = structure(logical(0), tags = list(type = "string")), CurrentApplicationVersionId = structure(logical(0), tags = list(type = "long")), InputId = structure(logical(0), tags = list(type = "string")), InputProcessingConfiguration = structure(list(InputLambdaProcessor = structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$add_application_input_processing_configuration_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$add_application_output_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ApplicationName = structure(logical(0), tags = list(type = "string")), CurrentApplicationVersionId = structure(logical(0), tags = list(type = "long")), Output = structure(list(Name = structure(logical(0), tags = list(type = "string")), KinesisStreamsOutput = structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), KinesisFirehoseOutput = structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), LambdaOutput = structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), DestinationSchema = structure(list(RecordFormatType = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$add_application_output_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$add_application_reference_data_source_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ApplicationName = structure(logical(0), tags = list(type = "string")), CurrentApplicationVersionId = structure(logical(0), tags = list(type = "long")), ReferenceDataSource = structure(list(TableName = structure(logical(0), tags = list(type = "string")), S3ReferenceDataSource = structure(list(BucketARN = structure(logical(0), tags = list(type = "string")), FileKey = structure(logical(0), tags = list(type = "string")), ReferenceRoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), ReferenceSchema = structure(list(RecordFormat = structure(list(RecordFormatType = structure(logical(0), tags = list(type = "string")), MappingParameters = structure(list(JSONMappingParameters = structure(list(RecordRowPath = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), CSVMappingParameters = structure(list(RecordRowDelimiter = structure(logical(0), tags = list(type = "string")), RecordColumnDelimiter = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "structure")), RecordEncoding = structure(logical(0), tags = list(type = "string")), RecordColumns = structure(list(structure(list(Name = structure(logical(0), tags = list(type = "string")), Mapping = structure(logical(0), tags = list(type = "string")), SqlType = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$add_application_reference_data_source_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$create_application_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ApplicationName = structure(logical(0), tags = list(type = "string")), ApplicationDescription = structure(logical(0), tags = list(type = "string")), Inputs = structure(list(structure(list(NamePrefix = structure(logical(0), tags = list(type = "string")), InputProcessingConfiguration = structure(list(InputLambdaProcessor = structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure")), KinesisStreamsInput = structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), KinesisFirehoseInput = structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), InputParallelism = structure(list(Count = structure(logical(0), tags = list(type = "integer"))), tags = list(type = "structure")), InputSchema = structure(list(RecordFormat = structure(list(RecordFormatType = structure(logical(0), tags = list(type = "string")), MappingParameters = structure(list(JSONMappingParameters = structure(list(RecordRowPath = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), CSVMappingParameters = structure(list(RecordRowDelimiter = structure(logical(0), tags = list(type = "string")), RecordColumnDelimiter = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "structure")), RecordEncoding = structure(logical(0), tags = list(type = "string")), RecordColumns = structure(list(structure(list(Name = structure(logical(0), tags = list(type = "string")), Mapping = structure(logical(0), tags = list(type = "string")), SqlType = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "list")), Outputs = structure(list(structure(list(Name = structure(logical(0), tags = list(type = "string")), KinesisStreamsOutput = structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), KinesisFirehoseOutput = structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), LambdaOutput = structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), DestinationSchema = structure(list(RecordFormatType = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "list")), CloudWatchLoggingOptions = structure(list(structure(list(LogStreamARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list")), ApplicationCode = structure(logical(0), tags = list(type = "string")), Tags = structure(list(structure(list(Key = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$create_application_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ApplicationSummary = structure(list(ApplicationName = structure(logical(0), tags = list(type = "string")), ApplicationARN = structure(logical(0), tags = list(type = "string")), ApplicationStatus = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$delete_application_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ApplicationName = structure(logical(0), tags = list(type = "string")), CreateTimestamp = structure(logical(0), tags = list(type = "timestamp"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$delete_application_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$delete_application_cloud_watch_logging_option_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ApplicationName = structure(logical(0), tags = list(type = "string")), CurrentApplicationVersionId = structure(logical(0), tags = list(type = "long")), CloudWatchLoggingOptionId = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$delete_application_cloud_watch_logging_option_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$delete_application_input_processing_configuration_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ApplicationName = structure(logical(0), tags = list(type = "string")), CurrentApplicationVersionId = structure(logical(0), tags = list(type = "long")), InputId = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$delete_application_input_processing_configuration_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$delete_application_output_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ApplicationName = structure(logical(0), tags = list(type = "string")), CurrentApplicationVersionId = structure(logical(0), tags = list(type = "long")), OutputId = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$delete_application_output_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$delete_application_reference_data_source_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ApplicationName = structure(logical(0), tags = list(type = "string")), CurrentApplicationVersionId = structure(logical(0), tags = list(type = "long")), ReferenceId = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$delete_application_reference_data_source_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$describe_application_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ApplicationName = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$describe_application_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ApplicationDetail = structure(list(ApplicationName = structure(logical(0), tags = list(type = "string")), ApplicationDescription = structure(logical(0), tags = list(type = "string")), ApplicationARN = structure(logical(0), tags = list(type = "string")), ApplicationStatus = structure(logical(0), tags = list(type = "string")), CreateTimestamp = structure(logical(0), tags = list(type = "timestamp")), LastUpdateTimestamp = structure(logical(0), tags = list(type = "timestamp")), InputDescriptions = structure(list(structure(list(InputId = structure(logical(0), tags = list(type = "string")), NamePrefix = structure(logical(0), tags = list(type = "string")), InAppStreamNames = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list")), InputProcessingConfigurationDescription = structure(list(InputLambdaProcessorDescription = structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure")), KinesisStreamsInputDescription = structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), KinesisFirehoseInputDescription = structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), InputSchema = structure(list(RecordFormat = structure(list(RecordFormatType = structure(logical(0), tags = list(type = "string")), MappingParameters = structure(list(JSONMappingParameters = structure(list(RecordRowPath = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), CSVMappingParameters = structure(list(RecordRowDelimiter = structure(logical(0), tags = list(type = "string")), RecordColumnDelimiter = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "structure")), RecordEncoding = structure(logical(0), tags = list(type = "string")), RecordColumns = structure(list(structure(list(Name = structure(logical(0), tags = list(type = "string")), Mapping = structure(logical(0), tags = list(type = "string")), SqlType = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure")), InputParallelism = structure(list(Count = structure(logical(0), tags = list(type = "integer"))), tags = list(type = "structure")), InputStartingPositionConfiguration = structure(list(InputStartingPosition = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "list")), OutputDescriptions = structure(list(structure(list(OutputId = structure(logical(0), tags = list(type = "string")), Name = structure(logical(0), tags = list(type = "string")), KinesisStreamsOutputDescription = structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), KinesisFirehoseOutputDescription = structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), LambdaOutputDescription = structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), DestinationSchema = structure(list(RecordFormatType = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "list")), ReferenceDataSourceDescriptions = structure(list(structure(list(ReferenceId = structure(logical(0), tags = list(type = "string")), TableName = structure(logical(0), tags = list(type = "string")), S3ReferenceDataSourceDescription = structure(list(BucketARN = structure(logical(0), tags = list(type = "string")), FileKey = structure(logical(0), tags = list(type = "string")), ReferenceRoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), ReferenceSchema = structure(list(RecordFormat = structure(list(RecordFormatType = structure(logical(0), tags = list(type = "string")), MappingParameters = structure(list(JSONMappingParameters = structure(list(RecordRowPath = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), CSVMappingParameters = structure(list(RecordRowDelimiter = structure(logical(0), tags = list(type = "string")), RecordColumnDelimiter = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "structure")), RecordEncoding = structure(logical(0), tags = list(type = "string")), RecordColumns = structure(list(structure(list(Name = structure(logical(0), tags = list(type = "string")), Mapping = structure(logical(0), tags = list(type = "string")), SqlType = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "list")), CloudWatchLoggingOptionDescriptions = structure(list(structure(list(CloudWatchLoggingOptionId = structure(logical(0), tags = list(type = "string")), LogStreamARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list")), ApplicationCode = structure(logical(0), tags = list(type = "string")), ApplicationVersionId = structure(logical(0), tags = list(type = "long"))), tags = list(type = "structure"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$discover_input_schema_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string")), InputStartingPositionConfiguration = structure(list(InputStartingPosition = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), S3Configuration = structure(list(RoleARN = structure(logical(0), tags = list(type = "string")), BucketARN = structure(logical(0), tags = list(type = "string")), FileKey = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), InputProcessingConfiguration = structure(list(InputLambdaProcessor = structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), RoleARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$discover_input_schema_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(InputSchema = structure(list(RecordFormat = structure(list(RecordFormatType = structure(logical(0), tags = list(type = "string")), MappingParameters = structure(list(JSONMappingParameters = structure(list(RecordRowPath = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), CSVMappingParameters = structure(list(RecordRowDelimiter = structure(logical(0), tags = list(type = "string")), RecordColumnDelimiter = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "structure")), RecordEncoding = structure(logical(0), tags = list(type = "string")), RecordColumns = structure(list(structure(list(Name = structure(logical(0), tags = list(type = "string")), Mapping = structure(logical(0), tags = list(type = "string")), SqlType = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure")), ParsedInputRecords = structure(list(structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list"))), tags = list(type = "list")), ProcessedInputRecords = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list")), RawInputRecords = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$list_applications_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Limit = structure(logical(0), tags = list(type = "integer")), ExclusiveStartApplicationName = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$list_applications_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ApplicationSummaries = structure(list(structure(list(ApplicationName = structure(logical(0), tags = list(type = "string")), ApplicationARN = structure(logical(0), tags = list(type = "string")), ApplicationStatus = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list")), HasMoreApplications = structure(logical(0), tags = list(type = "boolean"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$list_tags_for_resource_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ResourceARN = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$list_tags_for_resource_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Tags = structure(list(structure(list(Key = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$start_application_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ApplicationName = structure(logical(0), tags = list(type = "string")), InputConfigurations = structure(list(structure(list(Id = structure(logical(0), tags = list(type = "string")), InputStartingPositionConfiguration = structure(list(InputStartingPosition = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$start_application_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$stop_application_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ApplicationName = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$stop_application_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$tag_resource_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), Tags = structure(list(structure(list(Key = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$tag_resource_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$untag_resource_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ResourceARN = structure(logical(0), tags = list(type = "string")), TagKeys = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$untag_resource_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$update_application_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ApplicationName = structure(logical(0), tags = list(type = "string")), CurrentApplicationVersionId = structure(logical(0), tags = list(type = "long")), ApplicationUpdate = structure(list(InputUpdates = structure(list(structure(list(InputId = structure(logical(0), tags = list(type = "string")), NamePrefixUpdate = structure(logical(0), tags = list(type = "string")), InputProcessingConfigurationUpdate = structure(list(InputLambdaProcessorUpdate = structure(list(ResourceARNUpdate = structure(logical(0), tags = list(type = "string")), RoleARNUpdate = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure")), KinesisStreamsInputUpdate = structure(list(ResourceARNUpdate = structure(logical(0), tags = list(type = "string")), RoleARNUpdate = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), KinesisFirehoseInputUpdate = structure(list(ResourceARNUpdate = structure(logical(0), tags = list(type = "string")), RoleARNUpdate = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), InputSchemaUpdate = structure(list(RecordFormatUpdate = structure(list(RecordFormatType = structure(logical(0), tags = list(type = "string")), MappingParameters = structure(list(JSONMappingParameters = structure(list(RecordRowPath = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), CSVMappingParameters = structure(list(RecordRowDelimiter = structure(logical(0), tags = list(type = "string")), RecordColumnDelimiter = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "structure")), RecordEncodingUpdate = structure(logical(0), tags = list(type = "string")), RecordColumnUpdates = structure(list(structure(list(Name = structure(logical(0), tags = list(type = "string")), Mapping = structure(logical(0), tags = list(type = "string")), SqlType = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure")), InputParallelismUpdate = structure(list(CountUpdate = structure(logical(0), tags = list(type = "integer"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "list")), ApplicationCodeUpdate = structure(logical(0), tags = list(type = "string")), OutputUpdates = structure(list(structure(list(OutputId = structure(logical(0), tags = list(type = "string")), NameUpdate = structure(logical(0), tags = list(type = "string")), KinesisStreamsOutputUpdate = structure(list(ResourceARNUpdate = structure(logical(0), tags = list(type = "string")), RoleARNUpdate = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), KinesisFirehoseOutputUpdate = structure(list(ResourceARNUpdate = structure(logical(0), tags = list(type = "string")), RoleARNUpdate = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), LambdaOutputUpdate = structure(list(ResourceARNUpdate = structure(logical(0), tags = list(type = "string")), RoleARNUpdate = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), DestinationSchemaUpdate = structure(list(RecordFormatType = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "list")), ReferenceDataSourceUpdates = structure(list(structure(list(ReferenceId = structure(logical(0), tags = list(type = "string")), TableNameUpdate = structure(logical(0), tags = list(type = "string")), S3ReferenceDataSourceUpdate = structure(list(BucketARNUpdate = structure(logical(0), tags = list(type = "string")), FileKeyUpdate = structure(logical(0), tags = list(type = "string")), ReferenceRoleARNUpdate = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), ReferenceSchemaUpdate = structure(list(RecordFormat = structure(list(RecordFormatType = structure(logical(0), tags = list(type = "string")), MappingParameters = structure(list(JSONMappingParameters = structure(list(RecordRowPath = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), CSVMappingParameters = structure(list(RecordRowDelimiter = structure(logical(0), tags = list(type = "string")), RecordColumnDelimiter = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "structure")), RecordEncoding = structure(logical(0), tags = list(type = "string")), RecordColumns = structure(list(structure(list(Name = structure(logical(0), tags = list(type = "string")), Mapping = structure(logical(0), tags = list(type = "string")), SqlType = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "list")), CloudWatchLoggingOptionUpdates = structure(list(structure(list(CloudWatchLoggingOptionId = structure(logical(0), tags = list(type = "string")), LogStreamARNUpdate = structure(logical(0), tags = list(type = "string")), RoleARNUpdate = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.kinesisanalytics$update_application_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(), tags = list(type = "structure"))
  return(populate(args, shape))
}
