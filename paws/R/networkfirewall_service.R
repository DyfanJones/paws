# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' AWS Network Firewall
#'
#' @description
#' This is the API Reference for Network Firewall. This guide is for
#' developers who need detailed information about the Network Firewall API
#' actions, data types, and errors.
#' 
#' The REST API requires you to handle connection details, such as
#' calculating signatures, handling request retries, and error handling.
#' For general information about using the Amazon Web Services REST APIs,
#' see [Amazon Web Services
#' APIs](https://docs.aws.amazon.com/general/latest/gr/).
#' 
#' To view the complete list of Amazon Web Services Regions where Network
#' Firewall is available, see [Service endpoints and
#' quotas](https://docs.aws.amazon.com/general/latest/gr/network-firewall.html)
#' in the *Amazon Web Services General Reference*.
#' 
#' To access Network Firewall using the IPv4 REST API endpoint:
#' `https://network-firewall.<region>.amazonaws.com `
#' 
#' To access Network Firewall using the Dualstack (IPv4 and IPv6) REST API
#' endpoint: `https://network-firewall.<region>.aws.api `
#' 
#' Alternatively, you can use one of the Amazon Web Services SDKs to access
#' an API that's tailored to the programming language or platform that
#' you're using. For more information, see [Amazon Web Services
#' SDKs](https://aws.amazon.com/developer/tools/#SDKs).
#' 
#' For descriptions of Network Firewall features, including and
#' step-by-step instructions on how to use them through the Network
#' Firewall console, see the [Network Firewall Developer
#' Guide](https://docs.aws.amazon.com/network-firewall/latest/developerguide/).
#' 
#' Network Firewall is a stateful, managed, network firewall and intrusion
#' detection and prevention service for Amazon Virtual Private Cloud
#' (Amazon VPC). With Network Firewall, you can filter traffic at the
#' perimeter of your VPC. This includes filtering traffic going to and
#' coming from an internet gateway, NAT gateway, or over VPN or Direct
#' Connect. Network Firewall uses rules that are compatible with Suricata,
#' a free, open source network analysis and threat detection engine.
#' Network Firewall supports Suricata version 7.0.3. For information about
#' Suricata, see the [Suricata website](https://suricata.io/) and the
#' [Suricata User Guide](https://docs.suricata.io/en/suricata-7.0.3/).
#' 
#' You can use Network Firewall to monitor and protect your VPC traffic in
#' a number of ways. The following are just a few examples:
#' 
#' -   Allow domains or IP addresses for known Amazon Web Services service
#'     endpoints, such as Amazon S3, and block all other forms of traffic.
#' 
#' -   Use custom lists of known bad domains to limit the types of domain
#'     names that your applications can access.
#' 
#' -   Perform deep packet inspection on traffic entering or leaving your
#'     VPC.
#' 
#' -   Use stateful protocol detection to filter protocols like HTTPS,
#'     regardless of the port used.
#' 
#' To enable Network Firewall for your VPCs, you perform steps in both
#' Amazon VPC and in Network Firewall. For information about using Amazon
#' VPC, see [Amazon VPC User
#' Guide](https://docs.aws.amazon.com/vpc/latest/userguide/).
#' 
#' To start using Network Firewall, do the following:
#' 
#' 1.  (Optional) If you don't already have a VPC that you want to protect,
#'     create it in Amazon VPC.
#' 
#' 2.  In Amazon VPC, in each Availability Zone where you want to have a
#'     firewall endpoint, create a subnet for the sole use of Network
#'     Firewall.
#' 
#' 3.  In Network Firewall, create stateless and stateful rule groups, to
#'     define the components of the network traffic filtering behavior that
#'     you want your firewall to have.
#' 
#' 4.  In Network Firewall, create a firewall policy that uses your rule
#'     groups and specifies additional default traffic filtering behavior.
#' 
#' 5.  In Network Firewall, create a firewall and specify your new firewall
#'     policy and VPC subnets. Network Firewall creates a firewall endpoint
#'     in each subnet that you specify, with the behavior that's defined in
#'     the firewall policy.
#' 
#' 6.  In Amazon VPC, use ingress routing enhancements to route traffic
#'     through the new firewall endpoints.
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
#' svc <- networkfirewall(
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
#' svc <- networkfirewall()
#' svc$associate_firewall_policy(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=networkfirewall_associate_firewall_policy]{associate_firewall_policy} \tab Associates a FirewallPolicy to a Firewall\cr
#'  \link[=networkfirewall_associate_subnets]{associate_subnets} \tab Associates the specified subnets in the Amazon VPC to the firewall\cr
#'  \link[=networkfirewall_create_firewall]{create_firewall} \tab Creates an Network Firewall Firewall and accompanying FirewallStatus for a VPC\cr
#'  \link[=networkfirewall_create_firewall_policy]{create_firewall_policy} \tab Creates the firewall policy for the firewall according to the specifications\cr
#'  \link[=networkfirewall_create_rule_group]{create_rule_group} \tab Creates the specified stateless or stateful rule group, which includes the rules for network traffic inspection, a capacity setting, and tags\cr
#'  \link[=networkfirewall_create_tls_inspection_configuration]{create_tls_inspection_configuration} \tab Creates an Network Firewall TLS inspection configuration\cr
#'  \link[=networkfirewall_delete_firewall]{delete_firewall} \tab Deletes the specified Firewall and its FirewallStatus\cr
#'  \link[=networkfirewall_delete_firewall_policy]{delete_firewall_policy} \tab Deletes the specified FirewallPolicy\cr
#'  \link[=networkfirewall_delete_resource_policy]{delete_resource_policy} \tab Deletes a resource policy that you created in a PutResourcePolicy request\cr
#'  \link[=networkfirewall_delete_rule_group]{delete_rule_group} \tab Deletes the specified RuleGroup\cr
#'  \link[=networkfirewall_delete_tls_inspection_configuration]{delete_tls_inspection_configuration} \tab Deletes the specified TLSInspectionConfiguration\cr
#'  \link[=networkfirewall_describe_firewall]{describe_firewall} \tab Returns the data objects for the specified firewall\cr
#'  \link[=networkfirewall_describe_firewall_policy]{describe_firewall_policy} \tab Returns the data objects for the specified firewall policy\cr
#'  \link[=networkfirewall_describe_flow_operation]{describe_flow_operation} \tab Returns key information about a specific flow operation\cr
#'  \link[=networkfirewall_describe_logging_configuration]{describe_logging_configuration} \tab Returns the logging configuration for the specified firewall\cr
#'  \link[=networkfirewall_describe_resource_policy]{describe_resource_policy} \tab Retrieves a resource policy that you created in a PutResourcePolicy request\cr
#'  \link[=networkfirewall_describe_rule_group]{describe_rule_group} \tab Returns the data objects for the specified rule group\cr
#'  \link[=networkfirewall_describe_rule_group_metadata]{describe_rule_group_metadata} \tab High-level information about a rule group, returned by operations like create and describe\cr
#'  \link[=networkfirewall_describe_tls_inspection_configuration]{describe_tls_inspection_configuration} \tab Returns the data objects for the specified TLS inspection configuration\cr
#'  \link[=networkfirewall_disassociate_subnets]{disassociate_subnets} \tab Removes the specified subnet associations from the firewall\cr
#'  \link[=networkfirewall_get_analysis_report_results]{get_analysis_report_results} \tab The results of a COMPLETED analysis report generated with StartAnalysisReport\cr
#'  \link[=networkfirewall_list_analysis_reports]{list_analysis_reports} \tab Returns a list of all traffic analysis reports generated within the last 30 days\cr
#'  \link[=networkfirewall_list_firewall_policies]{list_firewall_policies} \tab Retrieves the metadata for the firewall policies that you have defined\cr
#'  \link[=networkfirewall_list_firewalls]{list_firewalls} \tab Retrieves the metadata for the firewalls that you have defined\cr
#'  \link[=networkfirewall_list_flow_operation_results]{list_flow_operation_results} \tab Returns the results of a specific flow operation\cr
#'  \link[=networkfirewall_list_flow_operations]{list_flow_operations} \tab Returns a list of all flow operations ran in a specific firewall\cr
#'  \link[=networkfirewall_list_rule_groups]{list_rule_groups} \tab Retrieves the metadata for the rule groups that you have defined\cr
#'  \link[=networkfirewall_list_tags_for_resource]{list_tags_for_resource} \tab Retrieves the tags associated with the specified resource\cr
#'  \link[=networkfirewall_list_tls_inspection_configurations]{list_tls_inspection_configurations} \tab Retrieves the metadata for the TLS inspection configurations that you have defined\cr
#'  \link[=networkfirewall_put_resource_policy]{put_resource_policy} \tab Creates or updates an IAM policy for your rule group or firewall policy\cr
#'  \link[=networkfirewall_start_analysis_report]{start_analysis_report} \tab Generates a traffic analysis report for the timeframe and traffic type you specify\cr
#'  \link[=networkfirewall_start_flow_capture]{start_flow_capture} \tab Begins capturing the flows in a firewall, according to the filters you define\cr
#'  \link[=networkfirewall_start_flow_flush]{start_flow_flush} \tab Begins the flushing of traffic from the firewall, according to the filters you define\cr
#'  \link[=networkfirewall_tag_resource]{tag_resource} \tab Adds the specified tags to the specified resource\cr
#'  \link[=networkfirewall_untag_resource]{untag_resource} \tab Removes the tags with the specified keys from the specified resource\cr
#'  \link[=networkfirewall_update_firewall_analysis_settings]{update_firewall_analysis_settings} \tab Enables specific types of firewall analysis on a specific firewall you define\cr
#'  \link[=networkfirewall_update_firewall_delete_protection]{update_firewall_delete_protection} \tab Modifies the flag, DeleteProtection, which indicates whether it is possible to delete the firewall\cr
#'  \link[=networkfirewall_update_firewall_description]{update_firewall_description} \tab Modifies the description for the specified firewall\cr
#'  \link[=networkfirewall_update_firewall_encryption_configuration]{update_firewall_encryption_configuration} \tab A complex type that contains settings for encryption of your firewall resources\cr
#'  \link[=networkfirewall_update_firewall_policy]{update_firewall_policy} \tab Updates the properties of the specified firewall policy\cr
#'  \link[=networkfirewall_update_firewall_policy_change_protection]{update_firewall_policy_change_protection} \tab Modifies the flag, ChangeProtection, which indicates whether it is possible to change the firewall\cr
#'  \link[=networkfirewall_update_logging_configuration]{update_logging_configuration} \tab Sets the logging configuration for the specified firewall\cr
#'  \link[=networkfirewall_update_rule_group]{update_rule_group} \tab Updates the rule settings for the specified rule group\cr
#'  \link[=networkfirewall_update_subnet_change_protection]{update_subnet_change_protection} \tab Update subnet change protection\cr
#'  \link[=networkfirewall_update_tls_inspection_configuration]{update_tls_inspection_configuration} \tab Updates the TLS inspection configuration settings for the specified TLS inspection configuration
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname networkfirewall
#' @export
networkfirewall <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .networkfirewall$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.networkfirewall <- list()

.networkfirewall$operations <- list()

.networkfirewall$metadata <- list(
  service_name = "networkfirewall",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "network-firewall.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "network-firewall.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "network-firewall.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "network-firewall.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "network-firewall.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "network-firewall.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "network-firewall.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "network-firewall.{region}.amazonaws.eu", global = FALSE)),
  service_id = "Network Firewall",
  api_version = "2020-11-12",
  signing_name = "network-firewall",
  json_version = "1.0",
  target_prefix = "NetworkFirewall_20201112"
)

.networkfirewall$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("jsonrpc", "v4")
  new_service(.networkfirewall$metadata, handlers, config, op)
}
