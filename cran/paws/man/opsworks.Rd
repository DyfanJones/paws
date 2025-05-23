% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.R
\name{opsworks}
\alias{opsworks}
\title{AWS OpsWorks}
\usage{
opsworks(config = list(), credentials = list(), endpoint = NULL, region = NULL)
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
OpsWorks

Welcome to the \emph{OpsWorks Stacks API Reference}. This guide provides
descriptions, syntax, and usage examples for OpsWorks Stacks actions and
data types, including common parameters and error codes.

OpsWorks Stacks is an application management service that provides an
integrated experience for managing the complete application lifecycle.
For information about OpsWorks, see the
\href{https://aws.amazon.com/}{OpsWorks} information page.

\strong{SDKs and CLI}

Use the OpsWorks Stacks API by using the Command Line Interface (CLI) or
by using one of the Amazon Web Services SDKs to implement applications
in your preferred language. For more information, see:
\itemize{
\item \href{https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html}{CLI}
\item \href{https://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/opsworks/AWSOpsWorksClient.html}{SDK for Java}
\item \href{https://docs.aws.amazon.com/sdkfornet/v3/apidocs/items/OpsWorks/NOpsWorks.html}{SDK for .NET}
\item \href{https://docs.aws.amazon.com/aws-sdk-php/v3/api/class-Aws.OpsWorks.OpsWorksClient.html}{SDK for PHP}
\item \href{https://docs.aws.amazon.com/sdk-for-ruby/v2/api/}{SDK for Ruby}
\item \href{https://docs.aws.amazon.com/sdk-for-javascript/}{Amazon Web Services SDK for Node.js}
\item \href{https://docs.pythonboto.org/en/latest/ref/opsworks.html}{SDK for Python (Boto)}
}

\strong{Endpoints}

OpsWorks Stacks supports the following endpoints, all HTTPS. You must
connect to one of the following endpoints. Stacks can only be accessed
or managed within the endpoint in which they are created.
\itemize{
\item opsworks.us-east-1.amazonaws.com
\item opsworks.us-east-2.amazonaws.com
\item opsworks.us-west-1.amazonaws.com
\item opsworks.us-west-2.amazonaws.com
\item opsworks.ca-central-1.amazonaws.com (API only; not available in the
Amazon Web Services Management Console)
\item opsworks.eu-west-1.amazonaws.com
\item opsworks.eu-west-2.amazonaws.com
\item opsworks.eu-west-3.amazonaws.com
\item opsworks.eu-central-1.amazonaws.com
\item opsworks.ap-northeast-1.amazonaws.com
\item opsworks.ap-northeast-2.amazonaws.com
\item opsworks.ap-south-1.amazonaws.com
\item opsworks.ap-southeast-1.amazonaws.com
\item opsworks.ap-southeast-2.amazonaws.com
\item opsworks.sa-east-1.amazonaws.com
}

\strong{Chef Versions}

When you call \code{create_stack},
\code{clone_stack}, or
\code{update_stack} we recommend you use the
\code{ConfigurationManager} parameter to specify the Chef version. The
recommended and default value for Linux stacks is currently 12. Windows
stacks use Chef 12.2. For more information, see \href{https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-chef11.html}{Chef Versions}.

You can specify Chef 12, 11.10, or 11.4 for your Linux stack. We
recommend migrating your existing Linux stacks to Chef 12 as soon as
possible.
}
\section{Service syntax}{


\if{html}{\out{<div class="sourceCode">}}\preformatted{svc <- opsworks(
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
\link[paws.management:opsworks_assign_instance]{assign_instance} \tab Assign a registered instance to a layer\cr
\link[paws.management:opsworks_assign_volume]{assign_volume} \tab Assigns one of the stack's registered Amazon EBS volumes to a specified instance\cr
\link[paws.management:opsworks_associate_elastic_ip]{associate_elastic_ip} \tab Associates one of the stack's registered Elastic IP addresses with a specified instance\cr
\link[paws.management:opsworks_attach_elastic_load_balancer]{attach_elastic_load_balancer} \tab Attaches an Elastic Load Balancing load balancer to a specified layer\cr
\link[paws.management:opsworks_clone_stack]{clone_stack} \tab Creates a clone of a specified stack\cr
\link[paws.management:opsworks_create_app]{create_app} \tab Creates an app for a specified stack\cr
\link[paws.management:opsworks_create_deployment]{create_deployment} \tab Runs deployment or stack commands\cr
\link[paws.management:opsworks_create_instance]{create_instance} \tab Creates an instance in a specified stack\cr
\link[paws.management:opsworks_create_layer]{create_layer} \tab Creates a layer\cr
\link[paws.management:opsworks_create_stack]{create_stack} \tab Creates a new stack\cr
\link[paws.management:opsworks_create_user_profile]{create_user_profile} \tab Creates a new user profile\cr
\link[paws.management:opsworks_delete_app]{delete_app} \tab Deletes a specified app\cr
\link[paws.management:opsworks_delete_instance]{delete_instance} \tab Deletes a specified instance, which terminates the associated Amazon EC2 instance\cr
\link[paws.management:opsworks_delete_layer]{delete_layer} \tab Deletes a specified layer\cr
\link[paws.management:opsworks_delete_stack]{delete_stack} \tab Deletes a specified stack\cr
\link[paws.management:opsworks_delete_user_profile]{delete_user_profile} \tab Deletes a user profile\cr
\link[paws.management:opsworks_deregister_ecs_cluster]{deregister_ecs_cluster} \tab Deregisters a specified Amazon ECS cluster from a stack\cr
\link[paws.management:opsworks_deregister_elastic_ip]{deregister_elastic_ip} \tab Deregisters a specified Elastic IP address\cr
\link[paws.management:opsworks_deregister_instance]{deregister_instance} \tab Deregister an instance from OpsWorks Stacks\cr
\link[paws.management:opsworks_deregister_rds_db_instance]{deregister_rds_db_instance} \tab Deregisters an Amazon RDS instance\cr
\link[paws.management:opsworks_deregister_volume]{deregister_volume} \tab Deregisters an Amazon EBS volume\cr
\link[paws.management:opsworks_describe_agent_versions]{describe_agent_versions} \tab Describes the available OpsWorks Stacks agent versions\cr
\link[paws.management:opsworks_describe_apps]{describe_apps} \tab Requests a description of a specified set of apps\cr
\link[paws.management:opsworks_describe_commands]{describe_commands} \tab Describes the results of specified commands\cr
\link[paws.management:opsworks_describe_deployments]{describe_deployments} \tab Requests a description of a specified set of deployments\cr
\link[paws.management:opsworks_describe_ecs_clusters]{describe_ecs_clusters} \tab Describes Amazon ECS clusters that are registered with a stack\cr
\link[paws.management:opsworks_describe_elastic_ips]{describe_elastic_ips} \tab Describes Elastic IP addresses\cr
\link[paws.management:opsworks_describe_elastic_load_balancers]{describe_elastic_load_balancers} \tab Describes a stack's Elastic Load Balancing instances\cr
\link[paws.management:opsworks_describe_instances]{describe_instances} \tab Requests a description of a set of instances\cr
\link[paws.management:opsworks_describe_layers]{describe_layers} \tab Requests a description of one or more layers in a specified stack\cr
\link[paws.management:opsworks_describe_load_based_auto_scaling]{describe_load_based_auto_scaling} \tab Describes load-based auto scaling configurations for specified layers\cr
\link[paws.management:opsworks_describe_my_user_profile]{describe_my_user_profile} \tab Describes a user's SSH information\cr
\link[paws.management:opsworks_describe_operating_systems]{describe_operating_systems} \tab Describes the operating systems that are supported by OpsWorks Stacks\cr
\link[paws.management:opsworks_describe_permissions]{describe_permissions} \tab Describes the permissions for a specified stack\cr
\link[paws.management:opsworks_describe_raid_arrays]{describe_raid_arrays} \tab Describe an instance's RAID arrays\cr
\link[paws.management:opsworks_describe_rds_db_instances]{describe_rds_db_instances} \tab Describes Amazon RDS instances\cr
\link[paws.management:opsworks_describe_service_errors]{describe_service_errors} \tab Describes OpsWorks Stacks service errors\cr
\link[paws.management:opsworks_describe_stack_provisioning_parameters]{describe_stack_provisioning_parameters} \tab Requests a description of a stack's provisioning parameters\cr
\link[paws.management:opsworks_describe_stacks]{describe_stacks} \tab Requests a description of one or more stacks\cr
\link[paws.management:opsworks_describe_stack_summary]{describe_stack_summary} \tab Describes the number of layers and apps in a specified stack, and the number of instances in each state, such as running_setup or online\cr
\link[paws.management:opsworks_describe_time_based_auto_scaling]{describe_time_based_auto_scaling} \tab Describes time-based auto scaling configurations for specified instances\cr
\link[paws.management:opsworks_describe_user_profiles]{describe_user_profiles} \tab Describe specified users\cr
\link[paws.management:opsworks_describe_volumes]{describe_volumes} \tab Describes an instance's Amazon EBS volumes\cr
\link[paws.management:opsworks_detach_elastic_load_balancer]{detach_elastic_load_balancer} \tab Detaches a specified Elastic Load Balancing instance from its layer\cr
\link[paws.management:opsworks_disassociate_elastic_ip]{disassociate_elastic_ip} \tab Disassociates an Elastic IP address from its instance\cr
\link[paws.management:opsworks_get_hostname_suggestion]{get_hostname_suggestion} \tab Gets a generated host name for the specified layer, based on the current host name theme\cr
\link[paws.management:opsworks_grant_access]{grant_access} \tab This action can be used only with Windows stacks\cr
\link[paws.management:opsworks_list_tags]{list_tags} \tab Returns a list of tags that are applied to the specified stack or layer\cr
\link[paws.management:opsworks_reboot_instance]{reboot_instance} \tab Reboots a specified instance\cr
\link[paws.management:opsworks_register_ecs_cluster]{register_ecs_cluster} \tab Registers a specified Amazon ECS cluster with a stack\cr
\link[paws.management:opsworks_register_elastic_ip]{register_elastic_ip} \tab Registers an Elastic IP address with a specified stack\cr
\link[paws.management:opsworks_register_instance]{register_instance} \tab Registers instances that were created outside of OpsWorks Stacks with a specified stack\cr
\link[paws.management:opsworks_register_rds_db_instance]{register_rds_db_instance} \tab Registers an Amazon RDS instance with a stack\cr
\link[paws.management:opsworks_register_volume]{register_volume} \tab Registers an Amazon EBS volume with a specified stack\cr
\link[paws.management:opsworks_set_load_based_auto_scaling]{set_load_based_auto_scaling} \tab Specify the load-based auto scaling configuration for a specified layer\cr
\link[paws.management:opsworks_set_permission]{set_permission} \tab Specifies a user's permissions\cr
\link[paws.management:opsworks_set_time_based_auto_scaling]{set_time_based_auto_scaling} \tab Specify the time-based auto scaling configuration for a specified instance\cr
\link[paws.management:opsworks_start_instance]{start_instance} \tab Starts a specified instance\cr
\link[paws.management:opsworks_start_stack]{start_stack} \tab Starts a stack's instances\cr
\link[paws.management:opsworks_stop_instance]{stop_instance} \tab Stops a specified instance\cr
\link[paws.management:opsworks_stop_stack]{stop_stack} \tab Stops a specified stack\cr
\link[paws.management:opsworks_tag_resource]{tag_resource} \tab Apply cost-allocation tags to a specified stack or layer in OpsWorks Stacks\cr
\link[paws.management:opsworks_unassign_instance]{unassign_instance} \tab Unassigns a registered instance from all layers that are using the instance\cr
\link[paws.management:opsworks_unassign_volume]{unassign_volume} \tab Unassigns an assigned Amazon EBS volume\cr
\link[paws.management:opsworks_untag_resource]{untag_resource} \tab Removes tags from a specified stack or layer\cr
\link[paws.management:opsworks_update_app]{update_app} \tab Updates a specified app\cr
\link[paws.management:opsworks_update_elastic_ip]{update_elastic_ip} \tab Updates a registered Elastic IP address's name\cr
\link[paws.management:opsworks_update_instance]{update_instance} \tab Updates a specified instance\cr
\link[paws.management:opsworks_update_layer]{update_layer} \tab Updates a specified layer\cr
\link[paws.management:opsworks_update_my_user_profile]{update_my_user_profile} \tab Updates a user's SSH public key\cr
\link[paws.management:opsworks_update_rds_db_instance]{update_rds_db_instance} \tab Updates an Amazon RDS instance\cr
\link[paws.management:opsworks_update_stack]{update_stack} \tab Updates a specified stack\cr
\link[paws.management:opsworks_update_user_profile]{update_user_profile} \tab Updates a specified user profile\cr
\link[paws.management:opsworks_update_volume]{update_volume} \tab Updates an Amazon EBS volume's name or mount point
}
}

\examples{
\dontrun{
svc <- opsworks()
svc$assign_instance(
  Foo = 123
)
}

}
