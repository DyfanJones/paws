% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloud9_service.R
\name{cloud9}
\alias{cloud9}
\title{AWS Cloud9}
\usage{
cloud9(config = list(), credentials = list(), endpoint = NULL, region = NULL)
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
Cloud9

Cloud9 is a collection of tools that you can use to code, build, run,
test, debug, and release software in the cloud.

For more information about Cloud9, see the \href{https://docs.aws.amazon.com/cloud9/latest/user-guide/}{Cloud9 User Guide}.

Cloud9 is no longer available to new customers. Existing customers of
Cloud9 can continue to use the service as normal. \href{https://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/}{Learn more"}

Cloud9 supports these operations:
\itemize{
\item \code{\link[=cloud9_create_environment_ec2]{create_environment_ec2}}: Creates
an Cloud9 development environment, launches an Amazon EC2 instance,
and then connects from the instance to the environment.
\item \code{\link[=cloud9_create_environment_membership]{create_environment_membership}}:
Adds an environment member to an environment.
\item \code{\link[=cloud9_delete_environment]{delete_environment}}: Deletes an
environment. If an Amazon EC2 instance is connected to the
environment, also terminates the instance.
\item \code{\link[=cloud9_delete_environment_membership]{delete_environment_membership}}:
Deletes an environment member from an environment.
\item \code{\link[=cloud9_describe_environment_memberships]{describe_environment_memberships}}:
Gets information about environment members for an environment.
\item \code{\link[=cloud9_describe_environments]{describe_environments}}: Gets
information about environments.
\item \code{\link[=cloud9_describe_environment_status]{describe_environment_status}}:
Gets status information for an environment.
\item \code{\link[=cloud9_list_environments]{list_environments}}: Gets a list of
environment identifiers.
\item \code{\link[=cloud9_list_tags_for_resource]{list_tags_for_resource}}: Gets the
tags for an environment.
\item \code{\link[=cloud9_tag_resource]{tag_resource}}: Adds tags to an environment.
\item \code{\link[=cloud9_untag_resource]{untag_resource}}: Removes tags from an
environment.
\item \code{\link[=cloud9_update_environment]{update_environment}}: Changes the
settings of an existing environment.
\item \code{\link[=cloud9_update_environment_membership]{update_environment_membership}}:
Changes the settings of an existing environment member for an
environment.
}
}
\section{Service syntax}{


\if{html}{\out{<div class="sourceCode">}}\preformatted{svc <- cloud9(
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
\link[=cloud9_create_environment_ec2]{create_environment_ec2} \tab Creates an Cloud9 development environment, launches an Amazon Elastic Compute Cloud (Amazon EC2) instance, and then connects from the instance to the environment\cr
\link[=cloud9_create_environment_membership]{create_environment_membership} \tab Adds an environment member to an Cloud9 development environment\cr
\link[=cloud9_delete_environment]{delete_environment} \tab Deletes an Cloud9 development environment\cr
\link[=cloud9_delete_environment_membership]{delete_environment_membership} \tab Deletes an environment member from a development environment\cr
\link[=cloud9_describe_environment_memberships]{describe_environment_memberships} \tab Gets information about environment members for an Cloud9 development environment\cr
\link[=cloud9_describe_environments]{describe_environments} \tab Gets information about Cloud9 development environments\cr
\link[=cloud9_describe_environment_status]{describe_environment_status} \tab Gets status information for an Cloud9 development environment\cr
\link[=cloud9_list_environments]{list_environments} \tab Gets a list of Cloud9 development environment identifiers\cr
\link[=cloud9_list_tags_for_resource]{list_tags_for_resource} \tab Gets a list of the tags associated with an Cloud9 development environment\cr
\link[=cloud9_tag_resource]{tag_resource} \tab Adds tags to an Cloud9 development environment\cr
\link[=cloud9_untag_resource]{untag_resource} \tab Removes tags from an Cloud9 development environment\cr
\link[=cloud9_update_environment]{update_environment} \tab Changes the settings of an existing Cloud9 development environment\cr
\link[=cloud9_update_environment_membership]{update_environment_membership} \tab Changes the settings of an existing environment member for an Cloud9 development environment
}
}

\examples{
\dontrun{
svc <- cloud9()
# 
svc$create_environment_ec2(
  name = "my-demo-environment",
  automaticStopTimeMinutes = 60L,
  description = "This is my demonstration environment.",
  instanceType = "t2.micro",
  ownerArn = "arn:aws:iam::123456789012:user/MyDemoUser",
  subnetId = "subnet-6300cd1b"
)
}

}
