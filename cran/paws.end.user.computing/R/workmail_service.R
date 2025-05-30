# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' Amazon WorkMail
#'
#' @description
#' WorkMail is a secure, managed business email and calendaring service
#' with support for existing desktop and mobile email clients. You can
#' access your email, contacts, and calendars using Microsoft Outlook, your
#' browser, or other native iOS and Android email applications. You can
#' integrate WorkMail with your existing corporate directory and control
#' both the keys that encrypt your data and the location in which your data
#' is stored.
#' 
#' The WorkMail API is designed for the following scenarios:
#' 
#' -   Listing and describing organizations
#' 
#' 
#' -   Managing users
#' 
#' 
#' -   Managing groups
#' 
#' 
#' -   Managing resources
#' 
#' All WorkMail API operations are Amazon-authenticated and
#' certificate-signed. They not only require the use of the AWS SDK, but
#' also allow for the exclusive use of AWS Identity and Access Management
#' users and roles to help facilitate access, trust, and permission
#' policies. By creating a role and allowing an IAM user to access the
#' WorkMail site, the IAM user gains full administrative visibility into
#' the entire WorkMail organization (or as set in the IAM policy). This
#' includes, but is not limited to, the ability to create, update, and
#' delete users, groups, and resources. This allows developers to perform
#' the scenarios listed above, as well as give users the ability to grant
#' access on a selective basis using the IAM model.
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
#' svc <- workmail(
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
#' svc <- workmail()
#' svc$associate_delegate_to_resource(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=workmail_associate_delegate_to_resource]{associate_delegate_to_resource} \tab Adds a member (user or group) to the resource's set of delegates\cr
#'  \link[=workmail_associate_member_to_group]{associate_member_to_group} \tab Adds a member (user or group) to the group's set\cr
#'  \link[=workmail_assume_impersonation_role]{assume_impersonation_role} \tab Assumes an impersonation role for the given WorkMail organization\cr
#'  \link[=workmail_cancel_mailbox_export_job]{cancel_mailbox_export_job} \tab Cancels a mailbox export job\cr
#'  \link[=workmail_create_alias]{create_alias} \tab Adds an alias to the set of a given member (user or group) of WorkMail\cr
#'  \link[=workmail_create_availability_configuration]{create_availability_configuration} \tab Creates an AvailabilityConfiguration for the given WorkMail organization and domain\cr
#'  \link[=workmail_create_group]{create_group} \tab Creates a group that can be used in WorkMail by calling the RegisterToWorkMail operation\cr
#'  \link[=workmail_create_identity_center_application]{create_identity_center_application} \tab Creates the WorkMail application in IAM Identity Center that can be used later in the WorkMail - IdC integration\cr
#'  \link[=workmail_create_impersonation_role]{create_impersonation_role} \tab Creates an impersonation role for the given WorkMail organization\cr
#'  \link[=workmail_create_mobile_device_access_rule]{create_mobile_device_access_rule} \tab Creates a new mobile device access rule for the specified WorkMail organization\cr
#'  \link[=workmail_create_organization]{create_organization} \tab Creates a new WorkMail organization\cr
#'  \link[=workmail_create_resource]{create_resource} \tab Creates a new WorkMail resource\cr
#'  \link[=workmail_create_user]{create_user} \tab Creates a user who can be used in WorkMail by calling the RegisterToWorkMail operation\cr
#'  \link[=workmail_delete_access_control_rule]{delete_access_control_rule} \tab Deletes an access control rule for the specified WorkMail organization\cr
#'  \link[=workmail_delete_alias]{delete_alias} \tab Remove one or more specified aliases from a set of aliases for a given user\cr
#'  \link[=workmail_delete_availability_configuration]{delete_availability_configuration} \tab Deletes the AvailabilityConfiguration for the given WorkMail organization and domain\cr
#'  \link[=workmail_delete_email_monitoring_configuration]{delete_email_monitoring_configuration} \tab Deletes the email monitoring configuration for a specified organization\cr
#'  \link[=workmail_delete_group]{delete_group} \tab Deletes a group from WorkMail\cr
#'  \link[=workmail_delete_identity_center_application]{delete_identity_center_application} \tab Deletes the IAM Identity Center application from WorkMail\cr
#'  \link[=workmail_delete_identity_provider_configuration]{delete_identity_provider_configuration} \tab Disables the integration between IdC and WorkMail\cr
#'  \link[=workmail_delete_impersonation_role]{delete_impersonation_role} \tab Deletes an impersonation role for the given WorkMail organization\cr
#'  \link[=workmail_delete_mailbox_permissions]{delete_mailbox_permissions} \tab Deletes permissions granted to a member (user or group)\cr
#'  \link[=workmail_delete_mobile_device_access_override]{delete_mobile_device_access_override} \tab Deletes the mobile device access override for the given WorkMail organization, user, and device\cr
#'  \link[=workmail_delete_mobile_device_access_rule]{delete_mobile_device_access_rule} \tab Deletes a mobile device access rule for the specified WorkMail organization\cr
#'  \link[=workmail_delete_organization]{delete_organization} \tab Deletes an WorkMail organization and all underlying AWS resources managed by WorkMail as part of the organization\cr
#'  \link[=workmail_delete_personal_access_token]{delete_personal_access_token} \tab Deletes the Personal Access Token from the provided WorkMail Organization\cr
#'  \link[=workmail_delete_resource]{delete_resource} \tab Deletes the specified resource\cr
#'  \link[=workmail_delete_retention_policy]{delete_retention_policy} \tab Deletes the specified retention policy from the specified organization\cr
#'  \link[=workmail_delete_user]{delete_user} \tab Deletes a user from WorkMail and all subsequent systems\cr
#'  \link[=workmail_deregister_from_work_mail]{deregister_from_work_mail} \tab Mark a user, group, or resource as no longer used in WorkMail\cr
#'  \link[=workmail_deregister_mail_domain]{deregister_mail_domain} \tab Removes a domain from WorkMail, stops email routing to WorkMail, and removes the authorization allowing WorkMail use\cr
#'  \link[=workmail_describe_email_monitoring_configuration]{describe_email_monitoring_configuration} \tab Describes the current email monitoring configuration for a specified organization\cr
#'  \link[=workmail_describe_entity]{describe_entity} \tab Returns basic details about an entity in WorkMail\cr
#'  \link[=workmail_describe_group]{describe_group} \tab Returns the data available for the group\cr
#'  \link[=workmail_describe_identity_provider_configuration]{describe_identity_provider_configuration} \tab Returns detailed information on the current IdC setup for the WorkMail organization\cr
#'  \link[=workmail_describe_inbound_dmarc_settings]{describe_inbound_dmarc_settings} \tab Lists the settings in a DMARC policy for a specified organization\cr
#'  \link[=workmail_describe_mailbox_export_job]{describe_mailbox_export_job} \tab Describes the current status of a mailbox export job\cr
#'  \link[=workmail_describe_organization]{describe_organization} \tab Provides more information regarding a given organization based on its identifier\cr
#'  \link[=workmail_describe_resource]{describe_resource} \tab Returns the data available for the resource\cr
#'  \link[=workmail_describe_user]{describe_user} \tab Provides information regarding the user\cr
#'  \link[=workmail_disassociate_delegate_from_resource]{disassociate_delegate_from_resource} \tab Removes a member from the resource's set of delegates\cr
#'  \link[=workmail_disassociate_member_from_group]{disassociate_member_from_group} \tab Removes a member from a group\cr
#'  \link[=workmail_get_access_control_effect]{get_access_control_effect} \tab Gets the effects of an organization's access control rules as they apply to a specified IPv4 address, access protocol action, and user ID or impersonation role ID\cr
#'  \link[=workmail_get_default_retention_policy]{get_default_retention_policy} \tab Gets the default retention policy details for the specified organization\cr
#'  \link[=workmail_get_impersonation_role]{get_impersonation_role} \tab Gets the impersonation role details for the given WorkMail organization\cr
#'  \link[=workmail_get_impersonation_role_effect]{get_impersonation_role_effect} \tab Tests whether the given impersonation role can impersonate a target user\cr
#'  \link[=workmail_get_mailbox_details]{get_mailbox_details} \tab Requests a user's mailbox details for a specified organization and user\cr
#'  \link[=workmail_get_mail_domain]{get_mail_domain} \tab Gets details for a mail domain, including domain records required to configure your domain with recommended security\cr
#'  \link[=workmail_get_mobile_device_access_effect]{get_mobile_device_access_effect} \tab Simulates the effect of the mobile device access rules for the given attributes of a sample access event\cr
#'  \link[=workmail_get_mobile_device_access_override]{get_mobile_device_access_override} \tab Gets the mobile device access override for the given WorkMail organization, user, and device\cr
#'  \link[=workmail_get_personal_access_token_metadata]{get_personal_access_token_metadata} \tab Requests details of a specific Personal Access Token within the WorkMail organization\cr
#'  \link[=workmail_list_access_control_rules]{list_access_control_rules} \tab Lists the access control rules for the specified organization\cr
#'  \link[=workmail_list_aliases]{list_aliases} \tab Creates a paginated call to list the aliases associated with a given entity\cr
#'  \link[=workmail_list_availability_configurations]{list_availability_configurations} \tab List all the AvailabilityConfiguration's for the given WorkMail organization\cr
#'  \link[=workmail_list_group_members]{list_group_members} \tab Returns an overview of the members of a group\cr
#'  \link[=workmail_list_groups]{list_groups} \tab Returns summaries of the organization's groups\cr
#'  \link[=workmail_list_groups_for_entity]{list_groups_for_entity} \tab Returns all the groups to which an entity belongs\cr
#'  \link[=workmail_list_impersonation_roles]{list_impersonation_roles} \tab Lists all the impersonation roles for the given WorkMail organization\cr
#'  \link[=workmail_list_mailbox_export_jobs]{list_mailbox_export_jobs} \tab Lists the mailbox export jobs started for the specified organization within the last seven days\cr
#'  \link[=workmail_list_mailbox_permissions]{list_mailbox_permissions} \tab Lists the mailbox permissions associated with a user, group, or resource mailbox\cr
#'  \link[=workmail_list_mail_domains]{list_mail_domains} \tab Lists the mail domains in a given WorkMail organization\cr
#'  \link[=workmail_list_mobile_device_access_overrides]{list_mobile_device_access_overrides} \tab Lists all the mobile device access overrides for any given combination of WorkMail organization, user, or device\cr
#'  \link[=workmail_list_mobile_device_access_rules]{list_mobile_device_access_rules} \tab Lists the mobile device access rules for the specified WorkMail organization\cr
#'  \link[=workmail_list_organizations]{list_organizations} \tab Returns summaries of the customer's organizations\cr
#'  \link[=workmail_list_personal_access_tokens]{list_personal_access_tokens} \tab Returns a summary of your Personal Access Tokens\cr
#'  \link[=workmail_list_resource_delegates]{list_resource_delegates} \tab Lists the delegates associated with a resource\cr
#'  \link[=workmail_list_resources]{list_resources} \tab Returns summaries of the organization's resources\cr
#'  \link[=workmail_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags applied to an WorkMail organization resource\cr
#'  \link[=workmail_list_users]{list_users} \tab Returns summaries of the organization's users\cr
#'  \link[=workmail_put_access_control_rule]{put_access_control_rule} \tab Adds a new access control rule for the specified organization\cr
#'  \link[=workmail_put_email_monitoring_configuration]{put_email_monitoring_configuration} \tab Creates or updates the email monitoring configuration for a specified organization\cr
#'  \link[=workmail_put_identity_provider_configuration]{put_identity_provider_configuration} \tab Enables integration between IAM Identity Center (IdC) and WorkMail to proxy authentication requests for mailbox users\cr
#'  \link[=workmail_put_inbound_dmarc_settings]{put_inbound_dmarc_settings} \tab Enables or disables a DMARC policy for a given organization\cr
#'  \link[=workmail_put_mailbox_permissions]{put_mailbox_permissions} \tab Sets permissions for a user, group, or resource\cr
#'  \link[=workmail_put_mobile_device_access_override]{put_mobile_device_access_override} \tab Creates or updates a mobile device access override for the given WorkMail organization, user, and device\cr
#'  \link[=workmail_put_retention_policy]{put_retention_policy} \tab Puts a retention policy to the specified organization\cr
#'  \link[=workmail_register_mail_domain]{register_mail_domain} \tab Registers a new domain in WorkMail and SES, and configures it for use by WorkMail\cr
#'  \link[=workmail_register_to_work_mail]{register_to_work_mail} \tab Registers an existing and disabled user, group, or resource for WorkMail use by associating a mailbox and calendaring capabilities\cr
#'  \link[=workmail_reset_password]{reset_password} \tab Allows the administrator to reset the password for a user\cr
#'  \link[=workmail_start_mailbox_export_job]{start_mailbox_export_job} \tab Starts a mailbox export job to export MIME-format email messages and calendar items from the specified mailbox to the specified Amazon Simple Storage Service (Amazon S3) bucket\cr
#'  \link[=workmail_tag_resource]{tag_resource} \tab Applies the specified tags to the specified WorkMailorganization resource\cr
#'  \link[=workmail_test_availability_configuration]{test_availability_configuration} \tab Performs a test on an availability provider to ensure that access is allowed\cr
#'  \link[=workmail_untag_resource]{untag_resource} \tab Untags the specified tags from the specified WorkMail organization resource\cr
#'  \link[=workmail_update_availability_configuration]{update_availability_configuration} \tab Updates an existing AvailabilityConfiguration for the given WorkMail organization and domain\cr
#'  \link[=workmail_update_default_mail_domain]{update_default_mail_domain} \tab Updates the default mail domain for an organization\cr
#'  \link[=workmail_update_group]{update_group} \tab Updates attributes in a group\cr
#'  \link[=workmail_update_impersonation_role]{update_impersonation_role} \tab Updates an impersonation role for the given WorkMail organization\cr
#'  \link[=workmail_update_mailbox_quota]{update_mailbox_quota} \tab Updates a user's current mailbox quota for a specified organization and user\cr
#'  \link[=workmail_update_mobile_device_access_rule]{update_mobile_device_access_rule} \tab Updates a mobile device access rule for the specified WorkMail organization\cr
#'  \link[=workmail_update_primary_email_address]{update_primary_email_address} \tab Updates the primary email for a user, group, or resource\cr
#'  \link[=workmail_update_resource]{update_resource} \tab Updates data for the resource\cr
#'  \link[=workmail_update_user]{update_user} \tab Updates data for the user
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname workmail
#' @export
workmail <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .workmail$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.workmail <- list()

.workmail$operations <- list()

.workmail$metadata <- list(
  service_name = "workmail",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "workmail.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "workmail.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "workmail.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "workmail.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "workmail.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "workmail.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "workmail.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "workmail.{region}.amazonaws.eu", global = FALSE)),
  service_id = "WorkMail",
  api_version = "2017-10-01",
  signing_name = "workmail",
  json_version = "1.1",
  target_prefix = "WorkMailService"
)

.workmail$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("jsonrpc", "v4")
  new_service(.workmail$metadata, handlers, config, op)
}
