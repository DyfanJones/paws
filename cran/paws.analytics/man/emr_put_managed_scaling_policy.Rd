% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/emr_operations.R
\name{emr_put_managed_scaling_policy}
\alias{emr_put_managed_scaling_policy}
\title{Creates or updates a managed scaling policy for an Amazon EMR cluster}
\usage{
emr_put_managed_scaling_policy(ClusterId, ManagedScalingPolicy)
}
\arguments{
\item{ClusterId}{[required] Specifies the ID of an EMR cluster where the managed scaling policy is
attached.}

\item{ManagedScalingPolicy}{[required] Specifies the constraints for the managed scaling policy.}
}
\description{
Creates or updates a managed scaling policy for an Amazon EMR cluster.
The managed scaling policy defines the limits for resources, such as EC2
instances that can be added or terminated from a cluster. The policy
only applies to the core and task nodes. The master node cannot be
scaled after initial configuration.
}
\section{Request syntax}{
\preformatted{svc$put_managed_scaling_policy(
  ClusterId = "string",
  ManagedScalingPolicy = list(
    ComputeLimits = list(
      UnitType = "InstanceFleetUnits"|"Instances"|"VCPU",
      MinimumCapacityUnits = 123,
      MaximumCapacityUnits = 123,
      MaximumOnDemandCapacityUnits = 123,
      MaximumCoreCapacityUnits = 123
    )
  )
)
}
}

\keyword{internal}
