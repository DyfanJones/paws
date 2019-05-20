% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elb_operations.R
\name{elb_register_instances_with_load_balancer}
\alias{elb_register_instances_with_load_balancer}
\title{Adds the specified instances to the specified load balancer}
\usage{
elb_register_instances_with_load_balancer(LoadBalancerName, Instances)
}
\arguments{
\item{LoadBalancerName}{[required] The name of the load balancer.}

\item{Instances}{[required] The IDs of the instances.}
}
\description{
Adds the specified instances to the specified load balancer.
}
\details{
The instance must be a running instance in the same network as the load
balancer (EC2-Classic or the same VPC). If you have EC2-Classic
instances and a load balancer in a VPC with ClassicLink enabled, you can
link the EC2-Classic instances to that VPC and then register the linked
EC2-Classic instances with the load balancer in the VPC.

Note that \code{RegisterInstanceWithLoadBalancer} completes when the request
has been registered. Instance registration takes a little time to
complete. To check the state of the registered instances, use
DescribeLoadBalancers or DescribeInstanceHealth.

After the instance is registered, it starts receiving traffic and
requests from the load balancer. Any instance that is not in one of the
Availability Zones registered for the load balancer is moved to the
\code{OutOfService} state. If an Availability Zone is added to the load
balancer later, any instances registered with the load balancer move to
the \code{InService} state.

To deregister instances from a load balancer, use
DeregisterInstancesFromLoadBalancer.

For more information, see \href{http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html}{Register or De-Register EC2 Instances}
in the \emph{Classic Load Balancers Guide}.
}
\section{Request syntax}{
\preformatted{svc$register_instances_with_load_balancer(
  LoadBalancerName = "string",
  Instances = list(
    list(
      InstanceId = "string"
    )
  )
)
}
}

\examples{
# This example registers the specified instance with the specified load
# balancer.
\donttest{svc$register_instances_with_load_balancer(
  Instances = list(
    list(
      InstanceId = "i-d6f6fae3"
    )
  ),
  LoadBalancerName = "my-load-balancer"
)}

}
\keyword{internal}