% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eks_operations.R
\name{eks_create_addon}
\alias{eks_create_addon}
\title{Creates an Amazon EKS add-on}
\usage{
eks_create_addon(
  clusterName,
  addonName,
  addonVersion = NULL,
  serviceAccountRoleArn = NULL,
  resolveConflicts = NULL,
  clientRequestToken = NULL,
  tags = NULL,
  configurationValues = NULL,
  podIdentityAssociations = NULL
)
}
\arguments{
\item{clusterName}{[required] The name of your cluster.}

\item{addonName}{[required] The name of the add-on. The name must match one of the names returned by
\code{\link[=eks_describe_addon_versions]{describe_addon_versions}}.}

\item{addonVersion}{The version of the add-on. The version must match one of the versions
returned by
\href{https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html}{\code{describe_addon_versions}}
.}

\item{serviceAccountRoleArn}{The Amazon Resource Name (ARN) of an existing IAM role to bind to the
add-on's service account. The role must be assigned the IAM permissions
required by the add-on. If you don't specify an existing IAM role, then
the add-on uses the permissions assigned to the node IAM role. For more
information, see \href{https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html}{Amazon EKS node IAM role}
in the \emph{Amazon EKS User Guide}.

To specify an existing IAM role, you must have an IAM OpenID Connect
(OIDC) provider created for your cluster. For more information, see
\href{https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html}{Enabling IAM roles for service accounts on your cluster}
in the \emph{Amazon EKS User Guide}.}

\item{resolveConflicts}{How to resolve field value conflicts for an Amazon EKS add-on. Conflicts
are handled based on the value you choose:
\itemize{
\item \strong{None} – If the self-managed version of the add-on is installed on
your cluster, Amazon EKS doesn't change the value. Creation of the
add-on might fail.
\item \strong{Overwrite} – If the self-managed version of the add-on is
installed on your cluster and the Amazon EKS default value is
different than the existing value, Amazon EKS changes the value to
the Amazon EKS default value.
\item \strong{Preserve} – This is similar to the NONE option. If the
self-managed version of the add-on is installed on your cluster
Amazon EKS doesn't change the add-on resource properties. Creation
of the add-on might fail if conflicts are detected. This option
works differently during the update operation. For more information,
see
\href{https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateAddon.html}{\code{update_addon}}
.
}

If you don't currently have the self-managed version of the add-on
installed on your cluster, the Amazon EKS add-on is installed. Amazon
EKS sets all values to default values, regardless of the option that you
specify.}

\item{clientRequestToken}{A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.}

\item{tags}{Metadata that assists with categorization and organization. Each tag
consists of a key and an optional value. You define both. Tags don't
propagate to any other cluster or Amazon Web Services resources.}

\item{configurationValues}{The set of configuration values for the add-on that's created. The
values that you provide are validated against the schema returned by
\code{\link[=eks_describe_addon_configuration]{describe_addon_configuration}}.}

\item{podIdentityAssociations}{An array of Pod Identity Assocations to be created. Each EKS Pod
Identity association maps a Kubernetes service account to an IAM Role.

For more information, see \href{https://docs.aws.amazon.com/eks/latest/userguide/add-ons-iam.html}{Attach an IAM Role to an Amazon EKS add-on using Pod Identity}
in the \emph{Amazon EKS User Guide}.}
}
\description{
Creates an Amazon EKS add-on.

See \url{https://www.paws-r-sdk.com/docs/eks_create_addon/} for full documentation.
}
\keyword{internal}
