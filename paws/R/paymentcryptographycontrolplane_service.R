# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' Payment Cryptography Control Plane
#'
#' @description
#' Amazon Web Services Payment Cryptography Control Plane APIs manage
#' encryption keys for use during payment-related cryptographic operations.
#' You can create, import, export, share, manage, and delete keys. You can
#' also manage Identity and Access Management (IAM) policies for keys. For
#' more information, see [Identity and access
#' management](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/security-iam.html)
#' in the *Amazon Web Services Payment Cryptography User Guide.*
#' 
#' To use encryption keys for payment-related transaction processing and
#' associated cryptographic operations, you use the [Amazon Web Services
#' Payment Cryptography Data
#' Plane](https://docs.aws.amazon.com/payment-cryptography/latest/DataAPIReference/Welcome.html).
#' You can perform actions like encrypt, decrypt, generate, and verify
#' payment-related data.
#' 
#' All Amazon Web Services Payment Cryptography API calls must be signed
#' and transmitted using Transport Layer Security (TLS). We recommend you
#' always use the latest supported TLS version for logging API requests.
#' 
#' Amazon Web Services Payment Cryptography supports CloudTrail for control
#' plane operations, a service that logs Amazon Web Services API calls and
#' related events for your Amazon Web Services account and delivers them to
#' an Amazon S3 bucket you specify. By using the information collected by
#' CloudTrail, you can determine what requests were made to Amazon Web
#' Services Payment Cryptography, who made the request, when it was made,
#' and so on. If you don't configure a trail, you can still view the most
#' recent events in the CloudTrail console. For more information, see the
#' [CloudTrail User
#' Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/).
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
#' svc <- paymentcryptographycontrolplane(
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
#' svc <- paymentcryptographycontrolplane()
#' svc$create_alias(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=paymentcryptographycontrolplane_create_alias]{create_alias} \tab Creates an alias, or a friendly name, for an Amazon Web Services Payment Cryptography key\cr
#'  \link[=paymentcryptographycontrolplane_create_key]{create_key} \tab Creates an Amazon Web Services Payment Cryptography key, a logical representation of a cryptographic key, that is unique in your account and Amazon Web Services Region\cr
#'  \link[=paymentcryptographycontrolplane_delete_alias]{delete_alias} \tab Deletes the alias, but doesn't affect the underlying key\cr
#'  \link[=paymentcryptographycontrolplane_delete_key]{delete_key} \tab Deletes the key material and metadata associated with Amazon Web Services Payment Cryptography key\cr
#'  \link[=paymentcryptographycontrolplane_export_key]{export_key} \tab Exports a key from Amazon Web Services Payment Cryptography\cr
#'  \link[=paymentcryptographycontrolplane_get_alias]{get_alias} \tab Gets the Amazon Web Services Payment Cryptography key associated with the alias\cr
#'  \link[=paymentcryptographycontrolplane_get_key]{get_key} \tab Gets the key material for an Amazon Web Services Payment Cryptography key, including the immutable and mutable data specified when the key was created\cr
#'  \link[=paymentcryptographycontrolplane_get_parameters_for_export]{get_parameters_for_export} \tab Gets the export token and the signing key certificate to initiate a TR-34 key export from Amazon Web Services Payment Cryptography\cr
#'  \link[=paymentcryptographycontrolplane_get_parameters_for_import]{get_parameters_for_import} \tab Gets the import token and the wrapping key certificate in PEM format (base64 encoded) to initiate a TR-34 WrappedKeyBlock or a RSA WrappedKeyCryptogram import into Amazon Web Services Payment Cryptography\cr
#'  \link[=paymentcryptographycontrolplane_get_public_key_certificate]{get_public_key_certificate} \tab Gets the public key certificate of the asymmetric key pair that exists within Amazon Web Services Payment Cryptography\cr
#'  \link[=paymentcryptographycontrolplane_import_key]{import_key} \tab Imports symmetric keys and public key certificates in PEM format (base64 encoded) into Amazon Web Services Payment Cryptography\cr
#'  \link[=paymentcryptographycontrolplane_list_aliases]{list_aliases} \tab Lists the aliases for all keys in the caller's Amazon Web Services account and Amazon Web Services Region\cr
#'  \link[=paymentcryptographycontrolplane_list_keys]{list_keys} \tab Lists the keys in the caller's Amazon Web Services account and Amazon Web Services Region\cr
#'  \link[=paymentcryptographycontrolplane_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags for an Amazon Web Services resource\cr
#'  \link[=paymentcryptographycontrolplane_restore_key]{restore_key} \tab Cancels a scheduled key deletion during the waiting period\cr
#'  \link[=paymentcryptographycontrolplane_start_key_usage]{start_key_usage} \tab Enables an Amazon Web Services Payment Cryptography key, which makes it active for cryptographic operations within Amazon Web Services Payment Cryptography\cr
#'  \link[=paymentcryptographycontrolplane_stop_key_usage]{stop_key_usage} \tab Disables an Amazon Web Services Payment Cryptography key, which makes it inactive within Amazon Web Services Payment Cryptography\cr
#'  \link[=paymentcryptographycontrolplane_tag_resource]{tag_resource} \tab Adds or edits tags on an Amazon Web Services Payment Cryptography key\cr
#'  \link[=paymentcryptographycontrolplane_untag_resource]{untag_resource} \tab Deletes a tag from an Amazon Web Services Payment Cryptography key\cr
#'  \link[=paymentcryptographycontrolplane_update_alias]{update_alias} \tab Associates an existing Amazon Web Services Payment Cryptography alias with a different key
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname paymentcryptographycontrolplane
#' @export
paymentcryptographycontrolplane <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .paymentcryptographycontrolplane$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.paymentcryptographycontrolplane <- list()

.paymentcryptographycontrolplane$operations <- list()

.paymentcryptographycontrolplane$metadata <- list(
  service_name = "paymentcryptographycontrolplane",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "controlplane.payment-cryptography.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "controlplane.payment-cryptography.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "controlplane.payment-cryptography.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "controlplane.payment-cryptography.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "controlplane.payment-cryptography.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "controlplane.payment-cryptography.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "controlplane.payment-cryptography.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "controlplane.payment-cryptography.{region}.amazonaws.eu", global = FALSE)),
  service_id = "Payment Cryptography",
  api_version = "2021-09-14",
  signing_name = "payment-cryptography",
  json_version = "1.0",
  target_prefix = "PaymentCryptographyControlPlane"
)

.paymentcryptographycontrolplane$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("jsonrpc", "v4")
  new_service(.paymentcryptographycontrolplane$metadata, handlers, config, op)
}
