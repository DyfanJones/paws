# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' AWS Glue
#'
#' @description
#' Glue
#' 
#' Defines the public endpoint for the Glue service.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{credentials}: \itemize{
#' \item{\strong{creds}: \itemize{
#' \item{\strong{access_key_id}: AWS access key ID}
#' \item{\strong{secret_access_key}: AWS secret access key}
#' \item{\strong{session_token}: AWS temporary session token}
#' }}
#' \item{\strong{profile}: The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}: Set anonymous credentials.}
#' }}
#' \item{\strong{endpoint}: The complete URL to use for the constructed client.}
#' \item{\strong{region}: The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}: Immediately close all HTTP connections.}
#' \item{\strong{timeout}: The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}: Set this to `true` to force the request to use path-style addressing, i.e. `http://s3.amazonaws.com/BUCKET/KEY`.}
#' \item{\strong{sts_regional_endpoint}: Set sts regional endpoint resolver to regional or legacy \url{https://docs.aws.amazon.com/sdkref/latest/guide/feature-sts-regionalized-endpoints.html}}
#' }
#' @param
#' credentials
#' Optional credentials shorthand for the config parameter
#' \itemize{
#' \item{\strong{creds}: \itemize{
#' \item{\strong{access_key_id}: AWS access key ID}
#' \item{\strong{secret_access_key}: AWS secret access key}
#' \item{\strong{session_token}: AWS temporary session token}
#' }}
#' \item{\strong{profile}: The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}: Set anonymous credentials.}
#' }
#' @param
#' endpoint
#' Optional shorthand for complete URL to use for the constructed client.
#' @param
#' region
#' Optional shorthand for AWS Region used in instantiating the client.
#'
#' @section Service syntax:
#' ```
#' svc <- glue(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical",
#'     sts_regional_endpoint = "string"
#'   ),
#'   credentials = list(
#'     creds = list(
#'       access_key_id = "string",
#'       secret_access_key = "string",
#'       session_token = "string"
#'     ),
#'     profile = "string",
#'     anonymous = "logical"
#'   ),
#'   endpoint = "string",
#'   region = "string"
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- glue()
#' svc$batch_create_partition(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=glue_batch_create_partition]{batch_create_partition} \tab Creates one or more partitions in a batch operation\cr
#'  \link[=glue_batch_delete_connection]{batch_delete_connection} \tab Deletes a list of connection definitions from the Data Catalog\cr
#'  \link[=glue_batch_delete_partition]{batch_delete_partition} \tab Deletes one or more partitions in a batch operation\cr
#'  \link[=glue_batch_delete_table]{batch_delete_table} \tab Deletes multiple tables at once\cr
#'  \link[=glue_batch_delete_table_version]{batch_delete_table_version} \tab Deletes a specified batch of versions of a table\cr
#'  \link[=glue_batch_get_blueprints]{batch_get_blueprints} \tab Retrieves information about a list of blueprints\cr
#'  \link[=glue_batch_get_crawlers]{batch_get_crawlers} \tab Returns a list of resource metadata for a given list of crawler names\cr
#'  \link[=glue_batch_get_custom_entity_types]{batch_get_custom_entity_types} \tab Retrieves the details for the custom patterns specified by a list of names\cr
#'  \link[=glue_batch_get_data_quality_result]{batch_get_data_quality_result} \tab Retrieves a list of data quality results for the specified result IDs\cr
#'  \link[=glue_batch_get_dev_endpoints]{batch_get_dev_endpoints} \tab Returns a list of resource metadata for a given list of development endpoint names\cr
#'  \link[=glue_batch_get_jobs]{batch_get_jobs} \tab Returns a list of resource metadata for a given list of job names\cr
#'  \link[=glue_batch_get_partition]{batch_get_partition} \tab Retrieves partitions in a batch request\cr
#'  \link[=glue_batch_get_table_optimizer]{batch_get_table_optimizer} \tab Returns the configuration for the specified table optimizers\cr
#'  \link[=glue_batch_get_triggers]{batch_get_triggers} \tab Returns a list of resource metadata for a given list of trigger names\cr
#'  \link[=glue_batch_get_workflows]{batch_get_workflows} \tab Returns a list of resource metadata for a given list of workflow names\cr
#'  \link[=glue_batch_put_data_quality_statistic_annotation]{batch_put_data_quality_statistic_annotation} \tab Annotate datapoints over time for a specific data quality statistic\cr
#'  \link[=glue_batch_stop_job_run]{batch_stop_job_run} \tab Stops one or more job runs for a specified job definition\cr
#'  \link[=glue_batch_update_partition]{batch_update_partition} \tab Updates one or more partitions in a batch operation\cr
#'  \link[=glue_cancel_data_quality_rule_recommendation_run]{cancel_data_quality_rule_recommendation_run} \tab Cancels the specified recommendation run that was being used to generate rules\cr
#'  \link[=glue_cancel_data_quality_ruleset_evaluation_run]{cancel_data_quality_ruleset_evaluation_run} \tab Cancels a run where a ruleset is being evaluated against a data source\cr
#'  \link[=glue_cancel_ml_task_run]{cancel_ml_task_run} \tab Cancels (stops) a task run\cr
#'  \link[=glue_cancel_statement]{cancel_statement} \tab Cancels the statement\cr
#'  \link[=glue_check_schema_version_validity]{check_schema_version_validity} \tab Validates the supplied schema\cr
#'  \link[=glue_create_blueprint]{create_blueprint} \tab Registers a blueprint with Glue\cr
#'  \link[=glue_create_catalog]{create_catalog} \tab Creates a new catalog in the Glue Data Catalog\cr
#'  \link[=glue_create_classifier]{create_classifier} \tab Creates a classifier in the user's account\cr
#'  \link[=glue_create_column_statistics_task_settings]{create_column_statistics_task_settings} \tab Creates settings for a column statistics task\cr
#'  \link[=glue_create_connection]{create_connection} \tab Creates a connection definition in the Data Catalog\cr
#'  \link[=glue_create_crawler]{create_crawler} \tab Creates a new crawler with specified targets, role, configuration, and optional schedule\cr
#'  \link[=glue_create_custom_entity_type]{create_custom_entity_type} \tab Creates a custom pattern that is used to detect sensitive data across the columns and rows of your structured data\cr
#'  \link[=glue_create_database]{create_database} \tab Creates a new database in a Data Catalog\cr
#'  \link[=glue_create_data_quality_ruleset]{create_data_quality_ruleset} \tab Creates a data quality ruleset with DQDL rules applied to a specified Glue table\cr
#'  \link[=glue_create_dev_endpoint]{create_dev_endpoint} \tab Creates a new development endpoint\cr
#'  \link[=glue_create_integration]{create_integration} \tab Creates a Zero-ETL integration in the caller's account between two resources with Amazon Resource Names (ARNs): the SourceArn and TargetArn\cr
#'  \link[=glue_create_integration_resource_property]{create_integration_resource_property} \tab This API can be used for setting up the ResourceProperty of the Glue connection (for the source) or Glue database ARN (for the target)\cr
#'  \link[=glue_create_integration_table_properties]{create_integration_table_properties} \tab This API is used to provide optional override properties for the the tables that need to be replicated\cr
#'  \link[=glue_create_job]{create_job} \tab Creates a new job definition\cr
#'  \link[=glue_create_ml_transform]{create_ml_transform} \tab Creates an Glue machine learning transform\cr
#'  \link[=glue_create_partition]{create_partition} \tab Creates a new partition\cr
#'  \link[=glue_create_partition_index]{create_partition_index} \tab Creates a specified partition index in an existing table\cr
#'  \link[=glue_create_registry]{create_registry} \tab Creates a new registry which may be used to hold a collection of schemas\cr
#'  \link[=glue_create_schema]{create_schema} \tab Creates a new schema set and registers the schema definition\cr
#'  \link[=glue_create_script]{create_script} \tab Transforms a directed acyclic graph (DAG) into code\cr
#'  \link[=glue_create_security_configuration]{create_security_configuration} \tab Creates a new security configuration\cr
#'  \link[=glue_create_session]{create_session} \tab Creates a new session\cr
#'  \link[=glue_create_table]{create_table} \tab Creates a new table definition in the Data Catalog\cr
#'  \link[=glue_create_table_optimizer]{create_table_optimizer} \tab Creates a new table optimizer for a specific function\cr
#'  \link[=glue_create_trigger]{create_trigger} \tab Creates a new trigger\cr
#'  \link[=glue_create_usage_profile]{create_usage_profile} \tab Creates an Glue usage profile\cr
#'  \link[=glue_create_user_defined_function]{create_user_defined_function} \tab Creates a new function definition in the Data Catalog\cr
#'  \link[=glue_create_workflow]{create_workflow} \tab Creates a new workflow\cr
#'  \link[=glue_delete_blueprint]{delete_blueprint} \tab Deletes an existing blueprint\cr
#'  \link[=glue_delete_catalog]{delete_catalog} \tab Removes the specified catalog from the Glue Data Catalog\cr
#'  \link[=glue_delete_classifier]{delete_classifier} \tab Removes a classifier from the Data Catalog\cr
#'  \link[=glue_delete_column_statistics_for_partition]{delete_column_statistics_for_partition} \tab Delete the partition column statistics of a column\cr
#'  \link[=glue_delete_column_statistics_for_table]{delete_column_statistics_for_table} \tab Retrieves table statistics of columns\cr
#'  \link[=glue_delete_column_statistics_task_settings]{delete_column_statistics_task_settings} \tab Deletes settings for a column statistics task\cr
#'  \link[=glue_delete_connection]{delete_connection} \tab Deletes a connection from the Data Catalog\cr
#'  \link[=glue_delete_crawler]{delete_crawler} \tab Removes a specified crawler from the Glue Data Catalog, unless the crawler state is RUNNING\cr
#'  \link[=glue_delete_custom_entity_type]{delete_custom_entity_type} \tab Deletes a custom pattern by specifying its name\cr
#'  \link[=glue_delete_database]{delete_database} \tab Removes a specified database from a Data Catalog\cr
#'  \link[=glue_delete_data_quality_ruleset]{delete_data_quality_ruleset} \tab Deletes a data quality ruleset\cr
#'  \link[=glue_delete_dev_endpoint]{delete_dev_endpoint} \tab Deletes a specified development endpoint\cr
#'  \link[=glue_delete_integration]{delete_integration} \tab Deletes the specified Zero-ETL integration\cr
#'  \link[=glue_delete_integration_table_properties]{delete_integration_table_properties} \tab Deletes the table properties that have been created for the tables that need to be replicated\cr
#'  \link[=glue_delete_job]{delete_job} \tab Deletes a specified job definition\cr
#'  \link[=glue_delete_ml_transform]{delete_ml_transform} \tab Deletes an Glue machine learning transform\cr
#'  \link[=glue_delete_partition]{delete_partition} \tab Deletes a specified partition\cr
#'  \link[=glue_delete_partition_index]{delete_partition_index} \tab Deletes a specified partition index from an existing table\cr
#'  \link[=glue_delete_registry]{delete_registry} \tab Delete the entire registry including schema and all of its versions\cr
#'  \link[=glue_delete_resource_policy]{delete_resource_policy} \tab Deletes a specified policy\cr
#'  \link[=glue_delete_schema]{delete_schema} \tab Deletes the entire schema set, including the schema set and all of its versions\cr
#'  \link[=glue_delete_schema_versions]{delete_schema_versions} \tab Remove versions from the specified schema\cr
#'  \link[=glue_delete_security_configuration]{delete_security_configuration} \tab Deletes a specified security configuration\cr
#'  \link[=glue_delete_session]{delete_session} \tab Deletes the session\cr
#'  \link[=glue_delete_table]{delete_table} \tab Removes a table definition from the Data Catalog\cr
#'  \link[=glue_delete_table_optimizer]{delete_table_optimizer} \tab Deletes an optimizer and all associated metadata for a table\cr
#'  \link[=glue_delete_table_version]{delete_table_version} \tab Deletes a specified version of a table\cr
#'  \link[=glue_delete_trigger]{delete_trigger} \tab Deletes a specified trigger\cr
#'  \link[=glue_delete_usage_profile]{delete_usage_profile} \tab Deletes the Glue specified usage profile\cr
#'  \link[=glue_delete_user_defined_function]{delete_user_defined_function} \tab Deletes an existing function definition from the Data Catalog\cr
#'  \link[=glue_delete_workflow]{delete_workflow} \tab Deletes a workflow\cr
#'  \link[=glue_describe_connection_type]{describe_connection_type} \tab The DescribeConnectionType API provides full details of the supported options for a given connection type in Glue\cr
#'  \link[=glue_describe_entity]{describe_entity} \tab Provides details regarding the entity used with the connection type, with a description of the data model for each field in the selected entity\cr
#'  \link[=glue_describe_inbound_integrations]{describe_inbound_integrations} \tab Returns a list of inbound integrations for the specified integration\cr
#'  \link[=glue_describe_integrations]{describe_integrations} \tab The API is used to retrieve a list of integrations\cr
#'  \link[=glue_get_blueprint]{get_blueprint} \tab Retrieves the details of a blueprint\cr
#'  \link[=glue_get_blueprint_run]{get_blueprint_run} \tab Retrieves the details of a blueprint run\cr
#'  \link[=glue_get_blueprint_runs]{get_blueprint_runs} \tab Retrieves the details of blueprint runs for a specified blueprint\cr
#'  \link[=glue_get_catalog]{get_catalog} \tab The name of the Catalog to retrieve\cr
#'  \link[=glue_get_catalog_import_status]{get_catalog_import_status} \tab Retrieves the status of a migration operation\cr
#'  \link[=glue_get_catalogs]{get_catalogs} \tab Retrieves all catalogs defined in a catalog in the Glue Data Catalog\cr
#'  \link[=glue_get_classifier]{get_classifier} \tab Retrieve a classifier by name\cr
#'  \link[=glue_get_classifiers]{get_classifiers} \tab Lists all classifier objects in the Data Catalog\cr
#'  \link[=glue_get_column_statistics_for_partition]{get_column_statistics_for_partition} \tab Retrieves partition statistics of columns\cr
#'  \link[=glue_get_column_statistics_for_table]{get_column_statistics_for_table} \tab Retrieves table statistics of columns\cr
#'  \link[=glue_get_column_statistics_task_run]{get_column_statistics_task_run} \tab Get the associated metadata/information for a task run, given a task run ID\cr
#'  \link[=glue_get_column_statistics_task_runs]{get_column_statistics_task_runs} \tab Retrieves information about all runs associated with the specified table\cr
#'  \link[=glue_get_column_statistics_task_settings]{get_column_statistics_task_settings} \tab Gets settings for a column statistics task\cr
#'  \link[=glue_get_connection]{get_connection} \tab Retrieves a connection definition from the Data Catalog\cr
#'  \link[=glue_get_connections]{get_connections} \tab Retrieves a list of connection definitions from the Data Catalog\cr
#'  \link[=glue_get_crawler]{get_crawler} \tab Retrieves metadata for a specified crawler\cr
#'  \link[=glue_get_crawler_metrics]{get_crawler_metrics} \tab Retrieves metrics about specified crawlers\cr
#'  \link[=glue_get_crawlers]{get_crawlers} \tab Retrieves metadata for all crawlers defined in the customer account\cr
#'  \link[=glue_get_custom_entity_type]{get_custom_entity_type} \tab Retrieves the details of a custom pattern by specifying its name\cr
#'  \link[=glue_get_database]{get_database} \tab Retrieves the definition of a specified database\cr
#'  \link[=glue_get_databases]{get_databases} \tab Retrieves all databases defined in a given Data Catalog\cr
#'  \link[=glue_get_data_catalog_encryption_settings]{get_data_catalog_encryption_settings} \tab Retrieves the security configuration for a specified catalog\cr
#'  \link[=glue_get_dataflow_graph]{get_dataflow_graph} \tab Transforms a Python script into a directed acyclic graph (DAG)\cr
#'  \link[=glue_get_data_quality_model]{get_data_quality_model} \tab Retrieve the training status of the model along with more information (CompletedOn, StartedOn, FailureReason)\cr
#'  \link[=glue_get_data_quality_model_result]{get_data_quality_model_result} \tab Retrieve a statistic's predictions for a given Profile ID\cr
#'  \link[=glue_get_data_quality_result]{get_data_quality_result} \tab Retrieves the result of a data quality rule evaluation\cr
#'  \link[=glue_get_data_quality_rule_recommendation_run]{get_data_quality_rule_recommendation_run} \tab Gets the specified recommendation run that was used to generate rules\cr
#'  \link[=glue_get_data_quality_ruleset]{get_data_quality_ruleset} \tab Returns an existing ruleset by identifier or name\cr
#'  \link[=glue_get_data_quality_ruleset_evaluation_run]{get_data_quality_ruleset_evaluation_run} \tab Retrieves a specific run where a ruleset is evaluated against a data source\cr
#'  \link[=glue_get_dev_endpoint]{get_dev_endpoint} \tab Retrieves information about a specified development endpoint\cr
#'  \link[=glue_get_dev_endpoints]{get_dev_endpoints} \tab Retrieves all the development endpoints in this Amazon Web Services account\cr
#'  \link[=glue_get_entity_records]{get_entity_records} \tab This API is used to query preview data from a given connection type or from a native Amazon S3 based Glue Data Catalog\cr
#'  \link[=glue_get_integration_resource_property]{get_integration_resource_property} \tab This API is used for fetching the ResourceProperty of the Glue connection (for the source) or Glue database ARN (for the target)\cr
#'  \link[=glue_get_integration_table_properties]{get_integration_table_properties} \tab This API is used to retrieve optional override properties for the tables that need to be replicated\cr
#'  \link[=glue_get_job]{get_job} \tab Retrieves an existing job definition\cr
#'  \link[=glue_get_job_bookmark]{get_job_bookmark} \tab Returns information on a job bookmark entry\cr
#'  \link[=glue_get_job_run]{get_job_run} \tab Retrieves the metadata for a given job run\cr
#'  \link[=glue_get_job_runs]{get_job_runs} \tab Retrieves metadata for all runs of a given job definition\cr
#'  \link[=glue_get_jobs]{get_jobs} \tab Retrieves all current job definitions\cr
#'  \link[=glue_get_mapping]{get_mapping} \tab Creates mappings\cr
#'  \link[=glue_get_ml_task_run]{get_ml_task_run} \tab Gets details for a specific task run on a machine learning transform\cr
#'  \link[=glue_get_ml_task_runs]{get_ml_task_runs} \tab Gets a list of runs for a machine learning transform\cr
#'  \link[=glue_get_ml_transform]{get_ml_transform} \tab Gets an Glue machine learning transform artifact and all its corresponding metadata\cr
#'  \link[=glue_get_ml_transforms]{get_ml_transforms} \tab Gets a sortable, filterable list of existing Glue machine learning transforms\cr
#'  \link[=glue_get_partition]{get_partition} \tab Retrieves information about a specified partition\cr
#'  \link[=glue_get_partition_indexes]{get_partition_indexes} \tab Retrieves the partition indexes associated with a table\cr
#'  \link[=glue_get_partitions]{get_partitions} \tab Retrieves information about the partitions in a table\cr
#'  \link[=glue_get_plan]{get_plan} \tab Gets code to perform a specified mapping\cr
#'  \link[=glue_get_registry]{get_registry} \tab Describes the specified registry in detail\cr
#'  \link[=glue_get_resource_policies]{get_resource_policies} \tab Retrieves the resource policies set on individual resources by Resource Access Manager during cross-account permission grants\cr
#'  \link[=glue_get_resource_policy]{get_resource_policy} \tab Retrieves a specified resource policy\cr
#'  \link[=glue_get_schema]{get_schema} \tab Describes the specified schema in detail\cr
#'  \link[=glue_get_schema_by_definition]{get_schema_by_definition} \tab Retrieves a schema by the SchemaDefinition\cr
#'  \link[=glue_get_schema_version]{get_schema_version} \tab Get the specified schema by its unique ID assigned when a version of the schema is created or registered\cr
#'  \link[=glue_get_schema_versions_diff]{get_schema_versions_diff} \tab Fetches the schema version difference in the specified difference type between two stored schema versions in the Schema Registry\cr
#'  \link[=glue_get_security_configuration]{get_security_configuration} \tab Retrieves a specified security configuration\cr
#'  \link[=glue_get_security_configurations]{get_security_configurations} \tab Retrieves a list of all security configurations\cr
#'  \link[=glue_get_session]{get_session} \tab Retrieves the session\cr
#'  \link[=glue_get_statement]{get_statement} \tab Retrieves the statement\cr
#'  \link[=glue_get_table]{get_table} \tab Retrieves the Table definition in a Data Catalog for a specified table\cr
#'  \link[=glue_get_table_optimizer]{get_table_optimizer} \tab Returns the configuration of all optimizers associated with a specified table\cr
#'  \link[=glue_get_tables]{get_tables} \tab Retrieves the definitions of some or all of the tables in a given Database\cr
#'  \link[=glue_get_table_version]{get_table_version} \tab Retrieves a specified version of a table\cr
#'  \link[=glue_get_table_versions]{get_table_versions} \tab Retrieves a list of strings that identify available versions of a specified table\cr
#'  \link[=glue_get_tags]{get_tags} \tab Retrieves a list of tags associated with a resource\cr
#'  \link[=glue_get_trigger]{get_trigger} \tab Retrieves the definition of a trigger\cr
#'  \link[=glue_get_triggers]{get_triggers} \tab Gets all the triggers associated with a job\cr
#'  \link[=glue_get_unfiltered_partition_metadata]{get_unfiltered_partition_metadata} \tab Retrieves partition metadata from the Data Catalog that contains unfiltered metadata\cr
#'  \link[=glue_get_unfiltered_partitions_metadata]{get_unfiltered_partitions_metadata} \tab Retrieves partition metadata from the Data Catalog that contains unfiltered metadata\cr
#'  \link[=glue_get_unfiltered_table_metadata]{get_unfiltered_table_metadata} \tab Allows a third-party analytical engine to retrieve unfiltered table metadata from the Data Catalog\cr
#'  \link[=glue_get_usage_profile]{get_usage_profile} \tab Retrieves information about the specified Glue usage profile\cr
#'  \link[=glue_get_user_defined_function]{get_user_defined_function} \tab Retrieves a specified function definition from the Data Catalog\cr
#'  \link[=glue_get_user_defined_functions]{get_user_defined_functions} \tab Retrieves multiple function definitions from the Data Catalog\cr
#'  \link[=glue_get_workflow]{get_workflow} \tab Retrieves resource metadata for a workflow\cr
#'  \link[=glue_get_workflow_run]{get_workflow_run} \tab Retrieves the metadata for a given workflow run\cr
#'  \link[=glue_get_workflow_run_properties]{get_workflow_run_properties} \tab Retrieves the workflow run properties which were set during the run\cr
#'  \link[=glue_get_workflow_runs]{get_workflow_runs} \tab Retrieves metadata for all runs of a given workflow\cr
#'  \link[=glue_import_catalog_to_glue]{import_catalog_to_glue} \tab Imports an existing Amazon Athena Data Catalog to Glue\cr
#'  \link[=glue_list_blueprints]{list_blueprints} \tab Lists all the blueprint names in an account\cr
#'  \link[=glue_list_column_statistics_task_runs]{list_column_statistics_task_runs} \tab List all task runs for a particular account\cr
#'  \link[=glue_list_connection_types]{list_connection_types} \tab The ListConnectionTypes API provides a discovery mechanism to learn available connection types in Glue\cr
#'  \link[=glue_list_crawlers]{list_crawlers} \tab Retrieves the names of all crawler resources in this Amazon Web Services account, or the resources with the specified tag\cr
#'  \link[=glue_list_crawls]{list_crawls} \tab Returns all the crawls of a specified crawler\cr
#'  \link[=glue_list_custom_entity_types]{list_custom_entity_types} \tab Lists all the custom patterns that have been created\cr
#'  \link[=glue_list_data_quality_results]{list_data_quality_results} \tab Returns all data quality execution results for your account\cr
#'  \link[=glue_list_data_quality_rule_recommendation_runs]{list_data_quality_rule_recommendation_runs} \tab Lists the recommendation runs meeting the filter criteria\cr
#'  \link[=glue_list_data_quality_ruleset_evaluation_runs]{list_data_quality_ruleset_evaluation_runs} \tab Lists all the runs meeting the filter criteria, where a ruleset is evaluated against a data source\cr
#'  \link[=glue_list_data_quality_rulesets]{list_data_quality_rulesets} \tab Returns a paginated list of rulesets for the specified list of Glue tables\cr
#'  \link[=glue_list_data_quality_statistic_annotations]{list_data_quality_statistic_annotations} \tab Retrieve annotations for a data quality statistic\cr
#'  \link[=glue_list_data_quality_statistics]{list_data_quality_statistics} \tab Retrieves a list of data quality statistics\cr
#'  \link[=glue_list_dev_endpoints]{list_dev_endpoints} \tab Retrieves the names of all DevEndpoint resources in this Amazon Web Services account, or the resources with the specified tag\cr
#'  \link[=glue_list_entities]{list_entities} \tab Returns the available entities supported by the connection type\cr
#'  \link[=glue_list_jobs]{list_jobs} \tab Retrieves the names of all job resources in this Amazon Web Services account, or the resources with the specified tag\cr
#'  \link[=glue_list_ml_transforms]{list_ml_transforms} \tab Retrieves a sortable, filterable list of existing Glue machine learning transforms in this Amazon Web Services account, or the resources with the specified tag\cr
#'  \link[=glue_list_registries]{list_registries} \tab Returns a list of registries that you have created, with minimal registry information\cr
#'  \link[=glue_list_schemas]{list_schemas} \tab Returns a list of schemas with minimal details\cr
#'  \link[=glue_list_schema_versions]{list_schema_versions} \tab Returns a list of schema versions that you have created, with minimal information\cr
#'  \link[=glue_list_sessions]{list_sessions} \tab Retrieve a list of sessions\cr
#'  \link[=glue_list_statements]{list_statements} \tab Lists statements for the session\cr
#'  \link[=glue_list_table_optimizer_runs]{list_table_optimizer_runs} \tab Lists the history of previous optimizer runs for a specific table\cr
#'  \link[=glue_list_triggers]{list_triggers} \tab Retrieves the names of all trigger resources in this Amazon Web Services account, or the resources with the specified tag\cr
#'  \link[=glue_list_usage_profiles]{list_usage_profiles} \tab List all the Glue usage profiles\cr
#'  \link[=glue_list_workflows]{list_workflows} \tab Lists names of workflows created in the account\cr
#'  \link[=glue_modify_integration]{modify_integration} \tab Modifies a Zero-ETL integration in the caller's account\cr
#'  \link[=glue_put_data_catalog_encryption_settings]{put_data_catalog_encryption_settings} \tab Sets the security configuration for a specified catalog\cr
#'  \link[=glue_put_data_quality_profile_annotation]{put_data_quality_profile_annotation} \tab Annotate all datapoints for a Profile\cr
#'  \link[=glue_put_resource_policy]{put_resource_policy} \tab Sets the Data Catalog resource policy for access control\cr
#'  \link[=glue_put_schema_version_metadata]{put_schema_version_metadata} \tab Puts the metadata key value pair for a specified schema version ID\cr
#'  \link[=glue_put_workflow_run_properties]{put_workflow_run_properties} \tab Puts the specified workflow run properties for the given workflow run\cr
#'  \link[=glue_query_schema_version_metadata]{query_schema_version_metadata} \tab Queries for the schema version metadata information\cr
#'  \link[=glue_register_schema_version]{register_schema_version} \tab Adds a new version to the existing schema\cr
#'  \link[=glue_remove_schema_version_metadata]{remove_schema_version_metadata} \tab Removes a key value pair from the schema version metadata for the specified schema version ID\cr
#'  \link[=glue_reset_job_bookmark]{reset_job_bookmark} \tab Resets a bookmark entry\cr
#'  \link[=glue_resume_workflow_run]{resume_workflow_run} \tab Restarts selected nodes of a previous partially completed workflow run and resumes the workflow run\cr
#'  \link[=glue_run_statement]{run_statement} \tab Executes the statement\cr
#'  \link[=glue_search_tables]{search_tables} \tab Searches a set of tables based on properties in the table metadata as well as on the parent database\cr
#'  \link[=glue_start_blueprint_run]{start_blueprint_run} \tab Starts a new run of the specified blueprint\cr
#'  \link[=glue_start_column_statistics_task_run]{start_column_statistics_task_run} \tab Starts a column statistics task run, for a specified table and columns\cr
#'  \link[=glue_start_column_statistics_task_run_schedule]{start_column_statistics_task_run_schedule} \tab Starts a column statistics task run schedule\cr
#'  \link[=glue_start_crawler]{start_crawler} \tab Starts a crawl using the specified crawler, regardless of what is scheduled\cr
#'  \link[=glue_start_crawler_schedule]{start_crawler_schedule} \tab Changes the schedule state of the specified crawler to SCHEDULED, unless the crawler is already running or the schedule state is already SCHEDULED\cr
#'  \link[=glue_start_data_quality_rule_recommendation_run]{start_data_quality_rule_recommendation_run} \tab Starts a recommendation run that is used to generate rules when you don't know what rules to write\cr
#'  \link[=glue_start_data_quality_ruleset_evaluation_run]{start_data_quality_ruleset_evaluation_run} \tab Once you have a ruleset definition (either recommended or your own), you call this operation to evaluate the ruleset against a data source (Glue table)\cr
#'  \link[=glue_start_export_labels_task_run]{start_export_labels_task_run} \tab Begins an asynchronous task to export all labeled data for a particular transform\cr
#'  \link[=glue_start_import_labels_task_run]{start_import_labels_task_run} \tab Enables you to provide additional labels (examples of truth) to be used to teach the machine learning transform and improve its quality\cr
#'  \link[=glue_start_job_run]{start_job_run} \tab Starts a job run using a job definition\cr
#'  \link[=glue_start_ml_evaluation_task_run]{start_ml_evaluation_task_run} \tab Starts a task to estimate the quality of the transform\cr
#'  \link[=glue_start_ml_labeling_set_generation_task_run]{start_ml_labeling_set_generation_task_run} \tab Starts the active learning workflow for your machine learning transform to improve the transform's quality by generating label sets and adding labels\cr
#'  \link[=glue_start_trigger]{start_trigger} \tab Starts an existing trigger\cr
#'  \link[=glue_start_workflow_run]{start_workflow_run} \tab Starts a new run of the specified workflow\cr
#'  \link[=glue_stop_column_statistics_task_run]{stop_column_statistics_task_run} \tab Stops a task run for the specified table\cr
#'  \link[=glue_stop_column_statistics_task_run_schedule]{stop_column_statistics_task_run_schedule} \tab Stops a column statistics task run schedule\cr
#'  \link[=glue_stop_crawler]{stop_crawler} \tab If the specified crawler is running, stops the crawl\cr
#'  \link[=glue_stop_crawler_schedule]{stop_crawler_schedule} \tab Sets the schedule state of the specified crawler to NOT_SCHEDULED, but does not stop the crawler if it is already running\cr
#'  \link[=glue_stop_session]{stop_session} \tab Stops the session\cr
#'  \link[=glue_stop_trigger]{stop_trigger} \tab Stops a specified trigger\cr
#'  \link[=glue_stop_workflow_run]{stop_workflow_run} \tab Stops the execution of the specified workflow run\cr
#'  \link[=glue_tag_resource]{tag_resource} \tab Adds tags to a resource\cr
#'  \link[=glue_test_connection]{test_connection} \tab Tests a connection to a service to validate the service credentials that you provide\cr
#'  \link[=glue_untag_resource]{untag_resource} \tab Removes tags from a resource\cr
#'  \link[=glue_update_blueprint]{update_blueprint} \tab Updates a registered blueprint\cr
#'  \link[=glue_update_catalog]{update_catalog} \tab Updates an existing catalog's properties in the Glue Data Catalog\cr
#'  \link[=glue_update_classifier]{update_classifier} \tab Modifies an existing classifier (a GrokClassifier, an XMLClassifier, a JsonClassifier, or a CsvClassifier, depending on which field is present)\cr
#'  \link[=glue_update_column_statistics_for_partition]{update_column_statistics_for_partition} \tab Creates or updates partition statistics of columns\cr
#'  \link[=glue_update_column_statistics_for_table]{update_column_statistics_for_table} \tab Creates or updates table statistics of columns\cr
#'  \link[=glue_update_column_statistics_task_settings]{update_column_statistics_task_settings} \tab Updates settings for a column statistics task\cr
#'  \link[=glue_update_connection]{update_connection} \tab Updates a connection definition in the Data Catalog\cr
#'  \link[=glue_update_crawler]{update_crawler} \tab Updates a crawler\cr
#'  \link[=glue_update_crawler_schedule]{update_crawler_schedule} \tab Updates the schedule of a crawler using a cron expression\cr
#'  \link[=glue_update_database]{update_database} \tab Updates an existing database definition in a Data Catalog\cr
#'  \link[=glue_update_data_quality_ruleset]{update_data_quality_ruleset} \tab Updates the specified data quality ruleset\cr
#'  \link[=glue_update_dev_endpoint]{update_dev_endpoint} \tab Updates a specified development endpoint\cr
#'  \link[=glue_update_integration_resource_property]{update_integration_resource_property} \tab This API can be used for updating the ResourceProperty of the Glue connection (for the source) or Glue database ARN (for the target)\cr
#'  \link[=glue_update_integration_table_properties]{update_integration_table_properties} \tab This API is used to provide optional override properties for the tables that need to be replicated\cr
#'  \link[=glue_update_job]{update_job} \tab Updates an existing job definition\cr
#'  \link[=glue_update_job_from_source_control]{update_job_from_source_control} \tab Synchronizes a job from the source control repository\cr
#'  \link[=glue_update_ml_transform]{update_ml_transform} \tab Updates an existing machine learning transform\cr
#'  \link[=glue_update_partition]{update_partition} \tab Updates a partition\cr
#'  \link[=glue_update_registry]{update_registry} \tab Updates an existing registry which is used to hold a collection of schemas\cr
#'  \link[=glue_update_schema]{update_schema} \tab Updates the description, compatibility setting, or version checkpoint for a schema set\cr
#'  \link[=glue_update_source_control_from_job]{update_source_control_from_job} \tab Synchronizes a job to the source control repository\cr
#'  \link[=glue_update_table]{update_table} \tab Updates a metadata table in the Data Catalog\cr
#'  \link[=glue_update_table_optimizer]{update_table_optimizer} \tab Updates the configuration for an existing table optimizer\cr
#'  \link[=glue_update_trigger]{update_trigger} \tab Updates a trigger definition\cr
#'  \link[=glue_update_usage_profile]{update_usage_profile} \tab Update an Glue usage profile\cr
#'  \link[=glue_update_user_defined_function]{update_user_defined_function} \tab Updates an existing function definition in the Data Catalog\cr
#'  \link[=glue_update_workflow]{update_workflow} \tab Updates an existing workflow
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname glue
#' @export
glue <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .glue$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.glue <- list()

.glue$operations <- list()

.glue$metadata <- list(
  service_name = "glue",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "glue.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "glue.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "glue.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "glue.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "glue.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "glue.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "glue.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "glue.{region}.amazonaws.eu", global = FALSE)),
  service_id = "Glue",
  api_version = "2017-03-31",
  signing_name = "glue",
  json_version = "1.1",
  target_prefix = "AWSGlue"
)

.glue$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("jsonrpc", "v4")
  new_service(.glue$metadata, handlers, config, op)
}
