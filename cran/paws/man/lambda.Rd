% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.R
\name{lambda}
\alias{lambda}
\title{AWS Lambda}
\usage{
lambda(config = list(), credentials = list(), endpoint = NULL, region = NULL)
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.
\itemize{
\item{\strong{credentials}: \itemize{
\item{\strong{creds}: \itemize{
\item{\strong{access_key_id}: AWS access key ID}
\item{\strong{secret_access_key}: AWS secret access key}
\item{\strong{session_token}: AWS temporary session token}
}}
\item{\strong{profile}: The name of a profile to use. If not given, then the default profile is used.}
\item{\strong{anonymous}: Set anonymous credentials.}
}}
\item{\strong{endpoint}: The complete URL to use for the constructed client.}
\item{\strong{region}: The AWS Region used in instantiating the client.}
\item{\strong{close_connection}: Immediately close all HTTP connections.}
\item{\strong{timeout}: The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
\item{\strong{s3_force_path_style}: Set this to \code{true} to force the request to use path-style addressing, i.e. \verb{http://s3.amazonaws.com/BUCKET/KEY}.}
\item{\strong{sts_regional_endpoint}: Set sts regional endpoint resolver to regional or legacy \url{https://docs.aws.amazon.com/sdkref/latest/guide/feature-sts-regionalized-endpoints.html}}
}}

\item{credentials}{Optional credentials shorthand for the config parameter
\itemize{
\item{\strong{creds}: \itemize{
\item{\strong{access_key_id}: AWS access key ID}
\item{\strong{secret_access_key}: AWS secret access key}
\item{\strong{session_token}: AWS temporary session token}
}}
\item{\strong{profile}: The name of a profile to use. If not given, then the default profile is used.}
\item{\strong{anonymous}: Set anonymous credentials.}
}}

\item{endpoint}{Optional shorthand for complete URL to use for the constructed client.}

\item{region}{Optional shorthand for AWS Region used in instantiating the client.}
}
\value{
A client for the service. You can call the service's operations using
syntax like \code{svc$operation(...)}, where \code{svc} is the name you've assigned
to the client. The available operations are listed in the
Operations section.
}
\description{
Lambda

\strong{Overview}

Lambda is a compute service that lets you run code without provisioning
or managing servers. Lambda runs your code on a high-availability
compute infrastructure and performs all of the administration of the
compute resources, including server and operating system maintenance,
capacity provisioning and automatic scaling, code monitoring and
logging. With Lambda, you can run code for virtually any type of
application or backend service. For more information about the Lambda
service, see \href{https://docs.aws.amazon.com/lambda/latest/dg/welcome.html}{What is Lambda} in
the \strong{Lambda Developer Guide}.

The \emph{Lambda API Reference} provides information about each of the API
methods, including details about the parameters in each API request and
response.

You can use Software Development Kits (SDKs), Integrated Development
Environment (IDE) Toolkits, and command line tools to access the API.
For installation instructions, see \href{https://aws.amazon.com/developer/tools/}{Tools for Amazon Web Services}.

For a list of Region-specific endpoints that Lambda supports, see
\href{https://docs.aws.amazon.com/general/latest/gr/lambda-service.html}{Lambda endpoints and quotas}
in the \emph{Amazon Web Services General Reference.}.

When making the API calls, you will need to authenticate your request by
providing a signature. Lambda supports signature version 4. For more
information, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_sigv.html}{Signature Version 4 signing process}
in the \emph{Amazon Web Services General Reference.}.

\strong{CA certificates}

Because Amazon Web Services SDKs use the CA certificates from your
computer, changes to the certificates on the Amazon Web Services servers
can cause connection failures when you attempt to use an SDK. You can
prevent these failures by keeping your computer's CA certificates and
operating system up-to-date. If you encounter this issue in a corporate
environment and do not manage your own computer, you might need to ask
an administrator to assist with the update process. The following list
shows minimum operating system and Java versions:
\itemize{
\item Microsoft Windows versions that have updates from January 2005 or
later installed contain at least one of the required CAs in their
trust list.
\item Mac OS X 10.4 with Java for Mac OS X 10.4 Release 5 (February 2007),
Mac OS X 10.5 (October 2007), and later versions contain at least
one of the required CAs in their trust list.
\item Red Hat Enterprise Linux 5 (March 2007), 6, and 7 and CentOS 5, 6,
and 7 all contain at least one of the required CAs in their default
trusted CA list.
\item Java 1.4.2_12 (May 2006), 5 Update 2 (March 2005), and all later
versions, including Java 6 (December 2006), 7, and 8, contain at
least one of the required CAs in their default trusted CA list.
}

When accessing the Lambda management console or Lambda API endpoints,
whether through browsers or programmatically, you will need to ensure
your client machines support any of the following CAs:
\itemize{
\item Amazon Root CA 1
\item Starfield Services Root Certificate Authority - G2
\item Starfield Class 2 Certification Authority
}

Root certificates from the first two authorities are available from
\href{https://www.amazontrust.com/repository/}{Amazon trust services}, but
keeping your computer up-to-date is the more straightforward solution.
To learn more about ACM-provided certificates, see \href{https://aws.amazon.com/certificate-manager/faqs/#certificates}{Amazon Web Services Certificate Manager FAQs.}
}
\section{Service syntax}{


\if{html}{\out{<div class="sourceCode">}}\preformatted{svc <- lambda(
  config = list(
    credentials = list(
      creds = list(
        access_key_id = "string",
        secret_access_key = "string",
        session_token = "string"
      ),
      profile = "string",
      anonymous = "logical"
    ),
    endpoint = "string",
    region = "string",
    close_connection = "logical",
    timeout = "numeric",
    s3_force_path_style = "logical",
    sts_regional_endpoint = "string"
  ),
  credentials = list(
    creds = list(
      access_key_id = "string",
      secret_access_key = "string",
      session_token = "string"
    ),
    profile = "string",
    anonymous = "logical"
  ),
  endpoint = "string",
  region = "string"
)
}\if{html}{\out{</div>}}
}

\section{Operations}{

\tabular{ll}{
\link[paws.compute:lambda_add_layer_version_permission]{add_layer_version_permission} \tab Adds permissions to the resource-based policy of a version of an Lambda layer\cr
\link[paws.compute:lambda_add_permission]{add_permission} \tab Grants a principal permission to use a function\cr
\link[paws.compute:lambda_create_alias]{create_alias} \tab Creates an alias for a Lambda function version\cr
\link[paws.compute:lambda_create_code_signing_config]{create_code_signing_config} \tab Creates a code signing configuration\cr
\link[paws.compute:lambda_create_event_source_mapping]{create_event_source_mapping} \tab Creates a mapping between an event source and an Lambda function\cr
\link[paws.compute:lambda_create_function]{create_function} \tab Creates a Lambda function\cr
\link[paws.compute:lambda_create_function_url_config]{create_function_url_config} \tab Creates a Lambda function URL with the specified configuration parameters\cr
\link[paws.compute:lambda_delete_alias]{delete_alias} \tab Deletes a Lambda function alias\cr
\link[paws.compute:lambda_delete_code_signing_config]{delete_code_signing_config} \tab Deletes the code signing configuration\cr
\link[paws.compute:lambda_delete_event_source_mapping]{delete_event_source_mapping} \tab Deletes an event source mapping\cr
\link[paws.compute:lambda_delete_function]{delete_function} \tab Deletes a Lambda function\cr
\link[paws.compute:lambda_delete_function_code_signing_config]{delete_function_code_signing_config} \tab Removes the code signing configuration from the function\cr
\link[paws.compute:lambda_delete_function_concurrency]{delete_function_concurrency} \tab Removes a concurrent execution limit from a function\cr
\link[paws.compute:lambda_delete_function_event_invoke_config]{delete_function_event_invoke_config} \tab Deletes the configuration for asynchronous invocation for a function, version, or alias\cr
\link[paws.compute:lambda_delete_function_url_config]{delete_function_url_config} \tab Deletes a Lambda function URL\cr
\link[paws.compute:lambda_delete_layer_version]{delete_layer_version} \tab Deletes a version of an Lambda layer\cr
\link[paws.compute:lambda_delete_provisioned_concurrency_config]{delete_provisioned_concurrency_config} \tab Deletes the provisioned concurrency configuration for a function\cr
\link[paws.compute:lambda_get_account_settings]{get_account_settings} \tab Retrieves details about your account's limits and usage in an Amazon Web Services Region\cr
\link[paws.compute:lambda_get_alias]{get_alias} \tab Returns details about a Lambda function alias\cr
\link[paws.compute:lambda_get_code_signing_config]{get_code_signing_config} \tab Returns information about the specified code signing configuration\cr
\link[paws.compute:lambda_get_event_source_mapping]{get_event_source_mapping} \tab Returns details about an event source mapping\cr
\link[paws.compute:lambda_get_function]{get_function} \tab Returns information about the function or function version, with a link to download the deployment package that's valid for 10 minutes\cr
\link[paws.compute:lambda_get_function_code_signing_config]{get_function_code_signing_config} \tab Returns the code signing configuration for the specified function\cr
\link[paws.compute:lambda_get_function_concurrency]{get_function_concurrency} \tab Returns details about the reserved concurrency configuration for a function\cr
\link[paws.compute:lambda_get_function_configuration]{get_function_configuration} \tab Returns the version-specific settings of a Lambda function or version\cr
\link[paws.compute:lambda_get_function_event_invoke_config]{get_function_event_invoke_config} \tab Retrieves the configuration for asynchronous invocation for a function, version, or alias\cr
\link[paws.compute:lambda_get_function_recursion_config]{get_function_recursion_config} \tab Returns your function's recursive loop detection configuration\cr
\link[paws.compute:lambda_get_function_url_config]{get_function_url_config} \tab Returns details about a Lambda function URL\cr
\link[paws.compute:lambda_get_layer_version]{get_layer_version} \tab Returns information about a version of an Lambda layer, with a link to download the layer archive that's valid for 10 minutes\cr
\link[paws.compute:lambda_get_layer_version_by_arn]{get_layer_version_by_arn} \tab Returns information about a version of an Lambda layer, with a link to download the layer archive that's valid for 10 minutes\cr
\link[paws.compute:lambda_get_layer_version_policy]{get_layer_version_policy} \tab Returns the permission policy for a version of an Lambda layer\cr
\link[paws.compute:lambda_get_policy]{get_policy} \tab Returns the resource-based IAM policy for a function, version, or alias\cr
\link[paws.compute:lambda_get_provisioned_concurrency_config]{get_provisioned_concurrency_config} \tab Retrieves the provisioned concurrency configuration for a function's alias or version\cr
\link[paws.compute:lambda_get_runtime_management_config]{get_runtime_management_config} \tab Retrieves the runtime management configuration for a function's version\cr
\link[paws.compute:lambda_invoke]{invoke} \tab Invokes a Lambda function\cr
\link[paws.compute:lambda_invoke_async]{invoke_async} \tab For asynchronous function invocation, use Invoke\cr
\link[paws.compute:lambda_invoke_with_response_stream]{invoke_with_response_stream} \tab Configure your Lambda functions to stream response payloads back to clients\cr
\link[paws.compute:lambda_list_aliases]{list_aliases} \tab Returns a list of aliases for a Lambda function\cr
\link[paws.compute:lambda_list_code_signing_configs]{list_code_signing_configs} \tab Returns a list of code signing configurations\cr
\link[paws.compute:lambda_list_event_source_mappings]{list_event_source_mappings} \tab Lists event source mappings\cr
\link[paws.compute:lambda_list_function_event_invoke_configs]{list_function_event_invoke_configs} \tab Retrieves a list of configurations for asynchronous invocation for a function\cr
\link[paws.compute:lambda_list_functions]{list_functions} \tab Returns a list of Lambda functions, with the version-specific configuration of each\cr
\link[paws.compute:lambda_list_functions_by_code_signing_config]{list_functions_by_code_signing_config} \tab List the functions that use the specified code signing configuration\cr
\link[paws.compute:lambda_list_function_url_configs]{list_function_url_configs} \tab Returns a list of Lambda function URLs for the specified function\cr
\link[paws.compute:lambda_list_layers]{list_layers} \tab Lists Lambda layers and shows information about the latest version of each\cr
\link[paws.compute:lambda_list_layer_versions]{list_layer_versions} \tab Lists the versions of an Lambda layer\cr
\link[paws.compute:lambda_list_provisioned_concurrency_configs]{list_provisioned_concurrency_configs} \tab Retrieves a list of provisioned concurrency configurations for a function\cr
\link[paws.compute:lambda_list_tags]{list_tags} \tab Returns a function, event source mapping, or code signing configuration's tags\cr
\link[paws.compute:lambda_list_versions_by_function]{list_versions_by_function} \tab Returns a list of versions, with the version-specific configuration of each\cr
\link[paws.compute:lambda_publish_layer_version]{publish_layer_version} \tab Creates an Lambda layer from a ZIP archive\cr
\link[paws.compute:lambda_publish_version]{publish_version} \tab Creates a version from the current code and configuration of a function\cr
\link[paws.compute:lambda_put_function_code_signing_config]{put_function_code_signing_config} \tab Update the code signing configuration for the function\cr
\link[paws.compute:lambda_put_function_concurrency]{put_function_concurrency} \tab Sets the maximum number of simultaneous executions for a function, and reserves capacity for that concurrency level\cr
\link[paws.compute:lambda_put_function_event_invoke_config]{put_function_event_invoke_config} \tab Configures options for asynchronous invocation on a function, version, or alias\cr
\link[paws.compute:lambda_put_function_recursion_config]{put_function_recursion_config} \tab Sets your function's recursive loop detection configuration\cr
\link[paws.compute:lambda_put_provisioned_concurrency_config]{put_provisioned_concurrency_config} \tab Adds a provisioned concurrency configuration to a function's alias or version\cr
\link[paws.compute:lambda_put_runtime_management_config]{put_runtime_management_config} \tab Sets the runtime management configuration for a function's version\cr
\link[paws.compute:lambda_remove_layer_version_permission]{remove_layer_version_permission} \tab Removes a statement from the permissions policy for a version of an Lambda layer\cr
\link[paws.compute:lambda_remove_permission]{remove_permission} \tab Revokes function-use permission from an Amazon Web Services service or another Amazon Web Services account\cr
\link[paws.compute:lambda_tag_resource]{tag_resource} \tab Adds tags to a function, event source mapping, or code signing configuration\cr
\link[paws.compute:lambda_untag_resource]{untag_resource} \tab Removes tags from a function, event source mapping, or code signing configuration\cr
\link[paws.compute:lambda_update_alias]{update_alias} \tab Updates the configuration of a Lambda function alias\cr
\link[paws.compute:lambda_update_code_signing_config]{update_code_signing_config} \tab Update the code signing configuration\cr
\link[paws.compute:lambda_update_event_source_mapping]{update_event_source_mapping} \tab Updates an event source mapping\cr
\link[paws.compute:lambda_update_function_code]{update_function_code} \tab Updates a Lambda function's code\cr
\link[paws.compute:lambda_update_function_configuration]{update_function_configuration} \tab Modify the version-specific settings of a Lambda function\cr
\link[paws.compute:lambda_update_function_event_invoke_config]{update_function_event_invoke_config} \tab Updates the configuration for asynchronous invocation for a function, version, or alias\cr
\link[paws.compute:lambda_update_function_url_config]{update_function_url_config} \tab Updates the configuration for a Lambda function URL
}
}

\examples{
\dontrun{
svc <- lambda()
# The following example grants permission for the account 223456789012 to
# use version 1 of a layer named my-layer.
svc$add_layer_version_permission(
  Action = "lambda:GetLayerVersion",
  LayerName = "my-layer",
  Principal = "223456789012",
  StatementId = "xaccount",
  VersionNumber = 1L
)
}

}
