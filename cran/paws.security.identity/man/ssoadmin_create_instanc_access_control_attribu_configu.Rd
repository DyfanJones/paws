% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssoadmin_operations.R
\name{ssoadmin_create_instance_access_control_attribute_configuration}
\alias{ssoadmin_create_instance_access_control_attribute_configuration}
\title{Enables the attributes-based access control (ABAC) feature for the
specified IAM Identity Center instance}
\usage{
ssoadmin_create_instance_access_control_attribute_configuration(
  InstanceArn,
  InstanceAccessControlAttributeConfiguration
)
}
\arguments{
\item{InstanceArn}{[required] The ARN of the IAM Identity Center instance under which the operation
will be executed.}

\item{InstanceAccessControlAttributeConfiguration}{[required] Specifies the IAM Identity Center identity store attributes to add to
your ABAC configuration. When using an external identity provider as an
identity source, you can pass attributes through the SAML assertion.
Doing so provides an alternative to configuring attributes from the IAM
Identity Center identity store. If a SAML assertion passes any of these
attributes, IAM Identity Center will replace the attribute value with
the value from the IAM Identity Center identity store.}
}
\description{
Enables the attributes-based access control (ABAC) feature for the specified IAM Identity Center instance. You can also specify new attributes to add to your ABAC configuration during the enabling process. For more information about ABAC, see Attribute-Based Access Control in the \emph{IAM Identity Center User Guide}.

See \url{https://www.paws-r-sdk.com/docs/ssoadmin_create_instance_access_control_attribute_configuration/} for full documentation.
}
\keyword{internal}
