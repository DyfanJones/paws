# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' Amazon EMR
#'
#' @description
#' Amazon EMR is a web service that makes it easier to process large
#' amounts of data efficiently. Amazon EMR uses Hadoop processing combined
#' with several Amazon Web Services services to do tasks such as web
#' indexing, data mining, log file analysis, machine learning, scientific
#' simulation, and data warehouse management.
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
#' svc <- emr(
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
#' svc <- emr()
#' svc$add_instance_fleet(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=emr_add_instance_fleet]{add_instance_fleet} \tab Adds an instance fleet to a running cluster\cr
#'  \link[=emr_add_instance_groups]{add_instance_groups} \tab Adds one or more instance groups to a running cluster\cr
#'  \link[=emr_add_job_flow_steps]{add_job_flow_steps} \tab AddJobFlowSteps adds new steps to a running cluster\cr
#'  \link[=emr_add_tags]{add_tags} \tab Adds tags to an Amazon EMR resource, such as a cluster or an Amazon EMR Studio\cr
#'  \link[=emr_cancel_steps]{cancel_steps} \tab Cancels a pending step or steps in a running cluster\cr
#'  \link[=emr_create_security_configuration]{create_security_configuration} \tab Creates a security configuration, which is stored in the service and can be specified when a cluster is created\cr
#'  \link[=emr_create_studio]{create_studio} \tab Creates a new Amazon EMR Studio\cr
#'  \link[=emr_create_studio_session_mapping]{create_studio_session_mapping} \tab Maps a user or group to the Amazon EMR Studio specified by StudioId, and applies a session policy to refine Studio permissions for that user or group\cr
#'  \link[=emr_delete_security_configuration]{delete_security_configuration} \tab Deletes a security configuration\cr
#'  \link[=emr_delete_studio]{delete_studio} \tab Removes an Amazon EMR Studio from the Studio metadata store\cr
#'  \link[=emr_delete_studio_session_mapping]{delete_studio_session_mapping} \tab Removes a user or group from an Amazon EMR Studio\cr
#'  \link[=emr_describe_cluster]{describe_cluster} \tab Provides cluster-level details including status, hardware and software configuration, VPC settings, and so on\cr
#'  \link[=emr_describe_job_flows]{describe_job_flows} \tab This API is no longer supported and will eventually be removed\cr
#'  \link[=emr_describe_notebook_execution]{describe_notebook_execution} \tab Provides details of a notebook execution\cr
#'  \link[=emr_describe_release_label]{describe_release_label} \tab Provides Amazon EMR release label details, such as the releases available the Region where the API request is run, and the available applications for a specific Amazon EMR release label\cr
#'  \link[=emr_describe_security_configuration]{describe_security_configuration} \tab Provides the details of a security configuration by returning the configuration JSON\cr
#'  \link[=emr_describe_step]{describe_step} \tab Provides more detail about the cluster step\cr
#'  \link[=emr_describe_studio]{describe_studio} \tab Returns details for the specified Amazon EMR Studio including ID, Name, VPC, Studio access URL, and so on\cr
#'  \link[=emr_get_auto_termination_policy]{get_auto_termination_policy} \tab Returns the auto-termination policy for an Amazon EMR cluster\cr
#'  \link[=emr_get_block_public_access_configuration]{get_block_public_access_configuration} \tab Returns the Amazon EMR block public access configuration for your Amazon Web Services account in the current Region\cr
#'  \link[=emr_get_cluster_session_credentials]{get_cluster_session_credentials} \tab Provides temporary, HTTP basic credentials that are associated with a given runtime IAM role and used by a cluster with fine-grained access control activated\cr
#'  \link[=emr_get_managed_scaling_policy]{get_managed_scaling_policy} \tab Fetches the attached managed scaling policy for an Amazon EMR cluster\cr
#'  \link[=emr_get_studio_session_mapping]{get_studio_session_mapping} \tab Fetches mapping details for the specified Amazon EMR Studio and identity (user or group)\cr
#'  \link[=emr_list_bootstrap_actions]{list_bootstrap_actions} \tab Provides information about the bootstrap actions associated with a cluster\cr
#'  \link[=emr_list_clusters]{list_clusters} \tab Provides the status of all clusters visible to this Amazon Web Services account\cr
#'  \link[=emr_list_instance_fleets]{list_instance_fleets} \tab Lists all available details about the instance fleets in a cluster\cr
#'  \link[=emr_list_instance_groups]{list_instance_groups} \tab Provides all available details about the instance groups in a cluster\cr
#'  \link[=emr_list_instances]{list_instances} \tab Provides information for all active Amazon EC2 instances and Amazon EC2 instances terminated in the last 30 days, up to a maximum of 2,000\cr
#'  \link[=emr_list_notebook_executions]{list_notebook_executions} \tab Provides summaries of all notebook executions\cr
#'  \link[=emr_list_release_labels]{list_release_labels} \tab Retrieves release labels of Amazon EMR services in the Region where the API is called\cr
#'  \link[=emr_list_security_configurations]{list_security_configurations} \tab Lists all the security configurations visible to this account, providing their creation dates and times, and their names\cr
#'  \link[=emr_list_steps]{list_steps} \tab Provides a list of steps for the cluster in reverse order unless you specify stepIds with the request or filter by StepStates\cr
#'  \link[=emr_list_studios]{list_studios} \tab Returns a list of all Amazon EMR Studios associated with the Amazon Web Services account\cr
#'  \link[=emr_list_studio_session_mappings]{list_studio_session_mappings} \tab Returns a list of all user or group session mappings for the Amazon EMR Studio specified by StudioId\cr
#'  \link[=emr_list_supported_instance_types]{list_supported_instance_types} \tab A list of the instance types that Amazon EMR supports\cr
#'  \link[=emr_modify_cluster]{modify_cluster} \tab Modifies the number of steps that can be executed concurrently for the cluster specified using ClusterID\cr
#'  \link[=emr_modify_instance_fleet]{modify_instance_fleet} \tab Modifies the target On-Demand and target Spot capacities for the instance fleet with the specified InstanceFleetID within the cluster specified using ClusterID\cr
#'  \link[=emr_modify_instance_groups]{modify_instance_groups} \tab ModifyInstanceGroups modifies the number of nodes and configuration settings of an instance group\cr
#'  \link[=emr_put_auto_scaling_policy]{put_auto_scaling_policy} \tab Creates or updates an automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster\cr
#'  \link[=emr_put_auto_termination_policy]{put_auto_termination_policy} \tab Auto-termination is supported in Amazon EMR releases 5\cr
#'  \link[=emr_put_block_public_access_configuration]{put_block_public_access_configuration} \tab Creates or updates an Amazon EMR block public access configuration for your Amazon Web Services account in the current Region\cr
#'  \link[=emr_put_managed_scaling_policy]{put_managed_scaling_policy} \tab Creates or updates a managed scaling policy for an Amazon EMR cluster\cr
#'  \link[=emr_remove_auto_scaling_policy]{remove_auto_scaling_policy} \tab Removes an automatic scaling policy from a specified instance group within an Amazon EMR cluster\cr
#'  \link[=emr_remove_auto_termination_policy]{remove_auto_termination_policy} \tab Removes an auto-termination policy from an Amazon EMR cluster\cr
#'  \link[=emr_remove_managed_scaling_policy]{remove_managed_scaling_policy} \tab Removes a managed scaling policy from a specified Amazon EMR cluster\cr
#'  \link[=emr_remove_tags]{remove_tags} \tab Removes tags from an Amazon EMR resource, such as a cluster or Amazon EMR Studio\cr
#'  \link[=emr_run_job_flow]{run_job_flow} \tab RunJobFlow creates and starts running a new cluster (job flow)\cr
#'  \link[=emr_set_keep_job_flow_alive_when_no_steps]{set_keep_job_flow_alive_when_no_steps} \tab You can use the SetKeepJobFlowAliveWhenNoSteps to configure a cluster (job flow) to terminate after the step execution, i\cr
#'  \link[=emr_set_termination_protection]{set_termination_protection} \tab SetTerminationProtection locks a cluster (job flow) so the Amazon EC2 instances in the cluster cannot be terminated by user intervention, an API call, or in the event of a job-flow error\cr
#'  \link[=emr_set_unhealthy_node_replacement]{set_unhealthy_node_replacement} \tab Specify whether to enable unhealthy node replacement, which lets Amazon EMR gracefully replace core nodes on a cluster if any nodes become unhealthy\cr
#'  \link[=emr_set_visible_to_all_users]{set_visible_to_all_users} \tab The SetVisibleToAllUsers parameter is no longer supported\cr
#'  \link[=emr_start_notebook_execution]{start_notebook_execution} \tab Starts a notebook execution\cr
#'  \link[=emr_stop_notebook_execution]{stop_notebook_execution} \tab Stops a notebook execution\cr
#'  \link[=emr_terminate_job_flows]{terminate_job_flows} \tab TerminateJobFlows shuts a list of clusters (job flows) down\cr
#'  \link[=emr_update_studio]{update_studio} \tab Updates an Amazon EMR Studio configuration, including attributes such as name, description, and subnets\cr
#'  \link[=emr_update_studio_session_mapping]{update_studio_session_mapping} \tab Updates the session policy attached to the user or group for the specified Amazon EMR Studio
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname emr
#' @export
emr <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .emr$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.emr <- list()

.emr$operations <- list()

.emr$metadata <- list(
  service_name = "elasticmapreduce",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "elasticmapreduce.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "elasticmapreduce.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "elasticmapreduce.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "elasticmapreduce.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "elasticmapreduce.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "elasticmapreduce.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "elasticmapreduce.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "elasticmapreduce.{region}.amazonaws.eu", global = FALSE)),
  service_id = "EMR",
  api_version = "2009-03-31",
  signing_name = "elasticmapreduce",
  json_version = "1.1",
  target_prefix = "ElasticMapReduce"
)

.emr$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("jsonrpc", "v4")
  new_service(.emr$metadata, handlers, config, op)
}
