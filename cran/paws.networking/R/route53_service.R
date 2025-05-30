# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' Amazon Route 53
#'
#' @description
#' Amazon Route 53 is a highly available and scalable Domain Name System
#' (DNS) web service.
#' 
#' You can use Route 53 to:
#' 
#' -   Register domain names.
#' 
#'     For more information, see [How domain registration
#'     works](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-domain-registration.html).
#' 
#' -   Route internet traffic to the resources for your domain
#' 
#'     For more information, see [How internet traffic is routed to your
#'     website or web
#'     application](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-dns-service.html).
#' 
#' -   Check the health of your resources.
#' 
#'     For more information, see [How Route 53 checks the health of your
#'     resources](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-health-checks.html).
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
#' svc <- route53(
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
#' svc <- route53()
#' # The following example associates the VPC with ID vpc-1a2b3c4d with the
#' # hosted zone with ID Z3M3LMPEXAMPLE.
#' svc$associate_vpc_with_hosted_zone(
#'   Comment = "",
#'   HostedZoneId = "Z3M3LMPEXAMPLE",
#'   VPC = list(
#'     VPCId = "vpc-1a2b3c4d",
#'     VPCRegion = "us-east-2"
#'   )
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=route53_activate_key_signing_key]{activate_key_signing_key} \tab Activates a key-signing key (KSK) so that it can be used for signing by DNSSEC\cr
#'  \link[=route53_associate_vpc_with_hosted_zone]{associate_vpc_with_hosted_zone} \tab Associates an Amazon VPC with a private hosted zone\cr
#'  \link[=route53_change_cidr_collection]{change_cidr_collection} \tab Creates, changes, or deletes CIDR blocks within a collection\cr
#'  \link[=route53_change_resource_record_sets]{change_resource_record_sets} \tab Creates, changes, or deletes a resource record set, which contains authoritative DNS information for a specified domain name or subdomain name\cr
#'  \link[=route53_change_tags_for_resource]{change_tags_for_resource} \tab Adds, edits, or deletes tags for a health check or a hosted zone\cr
#'  \link[=route53_create_cidr_collection]{create_cidr_collection} \tab Creates a CIDR collection in the current Amazon Web Services account\cr
#'  \link[=route53_create_health_check]{create_health_check} \tab Creates a new health check\cr
#'  \link[=route53_create_hosted_zone]{create_hosted_zone} \tab Creates a new public or private hosted zone\cr
#'  \link[=route53_create_key_signing_key]{create_key_signing_key} \tab Creates a new key-signing key (KSK) associated with a hosted zone\cr
#'  \link[=route53_create_query_logging_config]{create_query_logging_config} \tab Creates a configuration for DNS query logging\cr
#'  \link[=route53_create_reusable_delegation_set]{create_reusable_delegation_set} \tab Creates a delegation set (a group of four name servers) that can be reused by multiple hosted zones that were created by the same Amazon Web Services account\cr
#'  \link[=route53_create_traffic_policy]{create_traffic_policy} \tab Creates a traffic policy, which you use to create multiple DNS resource record sets for one domain name (such as example\cr
#'  \link[=route53_create_traffic_policy_instance]{create_traffic_policy_instance} \tab Creates resource record sets in a specified hosted zone based on the settings in a specified traffic policy version\cr
#'  \link[=route53_create_traffic_policy_version]{create_traffic_policy_version} \tab Creates a new version of an existing traffic policy\cr
#'  \link[=route53_create_vpc_association_authorization]{create_vpc_association_authorization} \tab Authorizes the Amazon Web Services account that created a specified VPC to submit an AssociateVPCWithHostedZone request to associate the VPC with a specified hosted zone that was created by a different account\cr
#'  \link[=route53_deactivate_key_signing_key]{deactivate_key_signing_key} \tab Deactivates a key-signing key (KSK) so that it will not be used for signing by DNSSEC\cr
#'  \link[=route53_delete_cidr_collection]{delete_cidr_collection} \tab Deletes a CIDR collection in the current Amazon Web Services account\cr
#'  \link[=route53_delete_health_check]{delete_health_check} \tab Deletes a health check\cr
#'  \link[=route53_delete_hosted_zone]{delete_hosted_zone} \tab Deletes a hosted zone\cr
#'  \link[=route53_delete_key_signing_key]{delete_key_signing_key} \tab Deletes a key-signing key (KSK)\cr
#'  \link[=route53_delete_query_logging_config]{delete_query_logging_config} \tab Deletes a configuration for DNS query logging\cr
#'  \link[=route53_delete_reusable_delegation_set]{delete_reusable_delegation_set} \tab Deletes a reusable delegation set\cr
#'  \link[=route53_delete_traffic_policy]{delete_traffic_policy} \tab Deletes a traffic policy\cr
#'  \link[=route53_delete_traffic_policy_instance]{delete_traffic_policy_instance} \tab Deletes a traffic policy instance and all of the resource record sets that Amazon Route 53 created when you created the instance\cr
#'  \link[=route53_delete_vpc_association_authorization]{delete_vpc_association_authorization} \tab Removes authorization to submit an AssociateVPCWithHostedZone request to associate a specified VPC with a hosted zone that was created by a different account\cr
#'  \link[=route53_disable_hosted_zone_dnssec]{disable_hosted_zone_dnssec} \tab Disables DNSSEC signing in a specific hosted zone\cr
#'  \link[=route53_disassociate_vpc_from_hosted_zone]{disassociate_vpc_from_hosted_zone} \tab Disassociates an Amazon Virtual Private Cloud (Amazon VPC) from an Amazon Route 53 private hosted zone\cr
#'  \link[=route53_enable_hosted_zone_dnssec]{enable_hosted_zone_dnssec} \tab Enables DNSSEC signing in a specific hosted zone\cr
#'  \link[=route53_get_account_limit]{get_account_limit} \tab Gets the specified limit for the current account, for example, the maximum number of health checks that you can create using the account\cr
#'  \link[=route53_get_change]{get_change} \tab Returns the current status of a change batch request\cr
#'  \link[=route53_get_checker_ip_ranges]{get_checker_ip_ranges} \tab Route 53 does not perform authorization for this API because it retrieves information that is already available to the public\cr
#'  \link[=route53_get_dnssec]{get_dnssec} \tab Returns information about DNSSEC for a specific hosted zone, including the key-signing keys (KSKs) in the hosted zone\cr
#'  \link[=route53_get_geo_location]{get_geo_location} \tab Gets information about whether a specified geographic location is supported for Amazon Route 53 geolocation resource record sets\cr
#'  \link[=route53_get_health_check]{get_health_check} \tab Gets information about a specified health check\cr
#'  \link[=route53_get_health_check_count]{get_health_check_count} \tab Retrieves the number of health checks that are associated with the current Amazon Web Services account\cr
#'  \link[=route53_get_health_check_last_failure_reason]{get_health_check_last_failure_reason} \tab Gets the reason that a specified health check failed most recently\cr
#'  \link[=route53_get_health_check_status]{get_health_check_status} \tab Gets status of a specified health check\cr
#'  \link[=route53_get_hosted_zone]{get_hosted_zone} \tab Gets information about a specified hosted zone including the four name servers assigned to the hosted zone\cr
#'  \link[=route53_get_hosted_zone_count]{get_hosted_zone_count} \tab Retrieves the number of hosted zones that are associated with the current Amazon Web Services account\cr
#'  \link[=route53_get_hosted_zone_limit]{get_hosted_zone_limit} \tab Gets the specified limit for a specified hosted zone, for example, the maximum number of records that you can create in the hosted zone\cr
#'  \link[=route53_get_query_logging_config]{get_query_logging_config} \tab Gets information about a specified configuration for DNS query logging\cr
#'  \link[=route53_get_reusable_delegation_set]{get_reusable_delegation_set} \tab Retrieves information about a specified reusable delegation set, including the four name servers that are assigned to the delegation set\cr
#'  \link[=route53_get_reusable_delegation_set_limit]{get_reusable_delegation_set_limit} \tab Gets the maximum number of hosted zones that you can associate with the specified reusable delegation set\cr
#'  \link[=route53_get_traffic_policy]{get_traffic_policy} \tab Gets information about a specific traffic policy version\cr
#'  \link[=route53_get_traffic_policy_instance]{get_traffic_policy_instance} \tab Gets information about a specified traffic policy instance\cr
#'  \link[=route53_get_traffic_policy_instance_count]{get_traffic_policy_instance_count} \tab Gets the number of traffic policy instances that are associated with the current Amazon Web Services account\cr
#'  \link[=route53_list_cidr_blocks]{list_cidr_blocks} \tab Returns a paginated list of location objects and their CIDR blocks\cr
#'  \link[=route53_list_cidr_collections]{list_cidr_collections} \tab Returns a paginated list of CIDR collections in the Amazon Web Services account (metadata only)\cr
#'  \link[=route53_list_cidr_locations]{list_cidr_locations} \tab Returns a paginated list of CIDR locations for the given collection (metadata only, does not include CIDR blocks)\cr
#'  \link[=route53_list_geo_locations]{list_geo_locations} \tab Retrieves a list of supported geographic locations\cr
#'  \link[=route53_list_health_checks]{list_health_checks} \tab Retrieve a list of the health checks that are associated with the current Amazon Web Services account\cr
#'  \link[=route53_list_hosted_zones]{list_hosted_zones} \tab Retrieves a list of the public and private hosted zones that are associated with the current Amazon Web Services account\cr
#'  \link[=route53_list_hosted_zones_by_name]{list_hosted_zones_by_name} \tab Retrieves a list of your hosted zones in lexicographic order\cr
#'  \link[=route53_list_hosted_zones_by_vpc]{list_hosted_zones_by_vpc} \tab Lists all the private hosted zones that a specified VPC is associated with, regardless of which Amazon Web Services account or Amazon Web Services service owns the hosted zones\cr
#'  \link[=route53_list_query_logging_configs]{list_query_logging_configs} \tab Lists the configurations for DNS query logging that are associated with the current Amazon Web Services account or the configuration that is associated with a specified hosted zone\cr
#'  \link[=route53_list_resource_record_sets]{list_resource_record_sets} \tab Lists the resource record sets in a specified hosted zone\cr
#'  \link[=route53_list_reusable_delegation_sets]{list_reusable_delegation_sets} \tab Retrieves a list of the reusable delegation sets that are associated with the current Amazon Web Services account\cr
#'  \link[=route53_list_tags_for_resource]{list_tags_for_resource} \tab Lists tags for one health check or hosted zone\cr
#'  \link[=route53_list_tags_for_resources]{list_tags_for_resources} \tab Lists tags for up to 10 health checks or hosted zones\cr
#'  \link[=route53_list_traffic_policies]{list_traffic_policies} \tab Gets information about the latest version for every traffic policy that is associated with the current Amazon Web Services account\cr
#'  \link[=route53_list_traffic_policy_instances]{list_traffic_policy_instances} \tab Gets information about the traffic policy instances that you created by using the current Amazon Web Services account\cr
#'  \link[=route53_list_traffic_policy_instances_by_hosted_zone]{list_traffic_policy_instances_by_hosted_zone} \tab Gets information about the traffic policy instances that you created in a specified hosted zone\cr
#'  \link[=route53_list_traffic_policy_instances_by_policy]{list_traffic_policy_instances_by_policy} \tab Gets information about the traffic policy instances that you created by using a specify traffic policy version\cr
#'  \link[=route53_list_traffic_policy_versions]{list_traffic_policy_versions} \tab Gets information about all of the versions for a specified traffic policy\cr
#'  \link[=route53_list_vpc_association_authorizations]{list_vpc_association_authorizations} \tab Gets a list of the VPCs that were created by other accounts and that can be associated with a specified hosted zone because you've submitted one or more CreateVPCAssociationAuthorization requests\cr
#'  \link[=route53_test_dns_answer]{test_dns_answer} \tab Gets the value that Amazon Route 53 returns in response to a DNS request for a specified record name and type\cr
#'  \link[=route53_update_health_check]{update_health_check} \tab Updates an existing health check\cr
#'  \link[=route53_update_hosted_zone_comment]{update_hosted_zone_comment} \tab Updates the comment for a specified hosted zone\cr
#'  \link[=route53_update_traffic_policy_comment]{update_traffic_policy_comment} \tab Updates the comment for a specified traffic policy version\cr
#'  \link[=route53_update_traffic_policy_instance]{update_traffic_policy_instance} \tab After you submit a UpdateTrafficPolicyInstance request, there's a brief delay while Route 53 creates the resource record sets that are specified in the traffic policy definition
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname route53
#' @export
route53 <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .route53$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.route53 <- list()

.route53$operations <- list()

.route53$metadata <- list(
  service_name = "route53",
  endpoints = list("aws-global" = list(endpoint = "route53.amazonaws.com", global = TRUE, signing_region = "us-east-1"), "us-east-1" = list(endpoint = "route53.amazonaws.com", global = TRUE), "aws-cn-global" = list(endpoint = "route53.amazonaws.com.cn", global = TRUE, signing_region = "cn-northwest-1"), "cn-northwest-1" = list(endpoint = "route53.amazonaws.com.cn", global = TRUE), "aws-us-gov-global" = list(endpoint = "route53.us-gov.amazonaws.com", global = TRUE, signing_region = "us-gov-west-1"), "us-gov-west-1" = list(endpoint = "route53.us-gov.amazonaws.com", global = TRUE), "aws-iso-global" = list(endpoint = "route53.c2s.ic.gov", global = TRUE, signing_region = "us-iso-east-1"), "us-iso-east-1" = list(endpoint = "route53.c2s.ic.gov", global = TRUE), "aws-iso-b-global" = list(endpoint = "route53.sc2s.sgov.gov", global = TRUE, signing_region = "us-isob-east-1"), "us-isob-east-1" = list(endpoint = "route53.sc2s.sgov.gov", global = TRUE), "aws-iso-e-global" = list(endpoint = "route53.cloud.adc-e.uk", global = TRUE, signing_region = "eu-isoe-west-1"), "eu-isoe-west-1" = list(endpoint = "route53.cloud.adc-e.uk", global = TRUE), "aws-iso-f-global" = list(endpoint = "route53.csp.hci.ic.gov", global = TRUE, signing_region = "us-isof-south-1"), "us-isof-south-1" = list(endpoint = "route53.csp.hci.ic.gov", global = TRUE), "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "route53.amazonaws.com", global = FALSE, signing_region = "us-east-1"), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "route53.amazonaws.com.cn", global = FALSE, signing_region = "cn-northwest-1"), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "route53.us-gov.amazonaws.com", global = FALSE, signing_region = "us-gov-west-1"), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "route53.c2s.ic.gov", global = FALSE, signing_region = "us-iso-east-1"), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "route53.sc2s.sgov.gov", global = FALSE, signing_region = "us-isob-east-1"), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "route53.cloud.adc-e.uk", global = FALSE, signing_region = "eu-isoe-west-1"), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "route53.csp.hci.ic.gov", global = FALSE, signing_region = "us-isof-south-1"), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "route53.{region}.amazonaws.eu", global = FALSE)),
  service_id = "Route 53",
  api_version = "2013-04-01",
  signing_name = "route53",
  json_version = "",
  target_prefix = ""
)

.route53$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("restxml", "v4")
  new_service(.route53$metadata, handlers, config, op)
}
