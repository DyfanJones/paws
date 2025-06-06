# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' AWS Certificate Manager Private Certificate Authority
#'
#' @description
#' This is the *Amazon Web Services Private Certificate Authority API
#' Reference*. It provides descriptions, syntax, and usage examples for
#' each of the actions and data types involved in creating and managing a
#' private certificate authority (CA) for your organization.
#' 
#' The documentation for each action shows the API request parameters and
#' the JSON response. Alternatively, you can use one of the Amazon Web
#' Services SDKs to access an API that is tailored to the programming
#' language or platform that you prefer. For more information, see [Amazon
#' Web Services SDKs](https://aws.amazon.com/developer/tools/#SDKs).
#' 
#' Each Amazon Web Services Private CA API operation has a quota that
#' determines the number of times the operation can be called per second.
#' Amazon Web Services Private CA throttles API requests at different rates
#' depending on the operation. Throttling means that Amazon Web Services
#' Private CA rejects an otherwise valid request because the request
#' exceeds the operation's quota for the number of requests per second.
#' When a request is throttled, Amazon Web Services Private CA returns a
#' [ThrottlingException](https://docs.aws.amazon.com/privateca/latest/APIReference/CommonErrors.html)
#' error. Amazon Web Services Private CA does not guarantee a minimum
#' request rate for APIs.
#' 
#' To see an up-to-date list of your Amazon Web Services Private CA quotas,
#' or to request a quota increase, log into your Amazon Web Services
#' account and visit the Service Quotas console.
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
#' svc <- acmpca(
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
#' svc <- acmpca()
#' svc$create_certificate_authority(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=acmpca_create_certificate_authority]{create_certificate_authority} \tab Creates a root or subordinate private certificate authority (CA)\cr
#'  \link[=acmpca_create_certificate_authority_audit_report]{create_certificate_authority_audit_report} \tab Creates an audit report that lists every time that your CA private key is used to issue a certificate\cr
#'  \link[=acmpca_create_permission]{create_permission} \tab Grants one or more permissions on a private CA to the Certificate Manager (ACM) service principal (acm\cr
#'  \link[=acmpca_delete_certificate_authority]{delete_certificate_authority} \tab Deletes a private certificate authority (CA)\cr
#'  \link[=acmpca_delete_permission]{delete_permission} \tab Revokes permissions on a private CA granted to the Certificate Manager (ACM) service principal (acm\cr
#'  \link[=acmpca_delete_policy]{delete_policy} \tab Deletes the resource-based policy attached to a private CA\cr
#'  \link[=acmpca_describe_certificate_authority]{describe_certificate_authority} \tab Lists information about your private certificate authority (CA) or one that has been shared with you\cr
#'  \link[=acmpca_describe_certificate_authority_audit_report]{describe_certificate_authority_audit_report} \tab Lists information about a specific audit report created by calling the CreateCertificateAuthorityAuditReport action\cr
#'  \link[=acmpca_get_certificate]{get_certificate} \tab Retrieves a certificate from your private CA or one that has been shared with you\cr
#'  \link[=acmpca_get_certificate_authority_certificate]{get_certificate_authority_certificate} \tab Retrieves the certificate and certificate chain for your private certificate authority (CA) or one that has been shared with you\cr
#'  \link[=acmpca_get_certificate_authority_csr]{get_certificate_authority_csr} \tab Retrieves the certificate signing request (CSR) for your private certificate authority (CA)\cr
#'  \link[=acmpca_get_policy]{get_policy} \tab Retrieves the resource-based policy attached to a private CA\cr
#'  \link[=acmpca_import_certificate_authority_certificate]{import_certificate_authority_certificate} \tab Imports a signed private CA certificate into Amazon Web Services Private CA\cr
#'  \link[=acmpca_issue_certificate]{issue_certificate} \tab Uses your private certificate authority (CA), or one that has been shared with you, to issue a client certificate\cr
#'  \link[=acmpca_list_certificate_authorities]{list_certificate_authorities} \tab Lists the private certificate authorities that you created by using the CreateCertificateAuthority action\cr
#'  \link[=acmpca_list_permissions]{list_permissions} \tab List all permissions on a private CA, if any, granted to the Certificate Manager (ACM) service principal (acm\cr
#'  \link[=acmpca_list_tags]{list_tags} \tab Lists the tags, if any, that are associated with your private CA or one that has been shared with you\cr
#'  \link[=acmpca_put_policy]{put_policy} \tab Attaches a resource-based policy to a private CA\cr
#'  \link[=acmpca_restore_certificate_authority]{restore_certificate_authority} \tab Restores a certificate authority (CA) that is in the DELETED state\cr
#'  \link[=acmpca_revoke_certificate]{revoke_certificate} \tab Revokes a certificate that was issued inside Amazon Web Services Private CA\cr
#'  \link[=acmpca_tag_certificate_authority]{tag_certificate_authority} \tab Adds one or more tags to your private CA\cr
#'  \link[=acmpca_untag_certificate_authority]{untag_certificate_authority} \tab Remove one or more tags from your private CA\cr
#'  \link[=acmpca_update_certificate_authority]{update_certificate_authority} \tab Updates the status or configuration of a private certificate authority (CA)
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname acmpca
#' @export
acmpca <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .acmpca$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.acmpca <- list()

.acmpca$operations <- list()

.acmpca$metadata <- list(
  service_name = "acm-pca",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "acm-pca.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "acm-pca.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "acm-pca.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "acm-pca.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "acm-pca.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "acm-pca.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "acm-pca.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "acm-pca.{region}.amazonaws.eu", global = FALSE)),
  service_id = "ACM PCA",
  api_version = "2017-08-22",
  signing_name = "acm-pca",
  json_version = "1.1",
  target_prefix = "ACMPrivateCA"
)

.acmpca$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("jsonrpc", "v4")
  new_service(.acmpca$metadata, handlers, config, op)
}
