% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.R
\name{kafka}
\alias{kafka}
\title{Managed Streaming for Kafka}
\usage{
kafka(config = list())
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.}
}
\description{
Managed Streaming for Kafka
}
\section{Service syntax}{
\preformatted{svc <- kafka(
  config = list(
    credentials = list(
      creds = list(
        access_key_id = "string",
        secret_access_key = "string",
        session_token = "string"
      ),
      profile = "string"
    ),
    endpoint = "string",
    region = "string"
  )
)
}
}

\section{Operations}{

\tabular{ll}{
\link[=kafka_create_cluster]{create_cluster} \tab Creates a new MSK cluster \cr
\link[=kafka_create_configuration]{create_configuration} \tab Creates a new MSK configuration \cr
\link[=kafka_delete_cluster]{delete_cluster} \tab Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in the request \cr
\link[=kafka_describe_cluster]{describe_cluster} \tab Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is specified in the request\cr
\link[=kafka_describe_cluster_operation]{describe_cluster_operation} \tab Returns a description of the cluster operation specified by the ARN \cr
\link[=kafka_describe_configuration]{describe_configuration} \tab Returns a description of this MSK configuration \cr
\link[=kafka_describe_configuration_revision]{describe_configuration_revision} \tab Returns a description of this revision of the configuration \cr
\link[=kafka_get_bootstrap_brokers]{get_bootstrap_brokers} \tab A list of brokers that a client application can use to bootstrap \cr
\link[=kafka_get_compatible_kafka_versions]{get_compatible_kafka_versions} \tab Gets the Apache Kafka versions to which you can update the MSK cluster \cr
\link[=kafka_list_cluster_operations]{list_cluster_operations} \tab Returns a list of all the operations that have been performed on the specified MSK cluster \cr
\link[=kafka_list_clusters]{list_clusters} \tab Returns a list of all the MSK clusters in the current Region \cr
\link[=kafka_list_configuration_revisions]{list_configuration_revisions} \tab Returns a list of all the MSK configurations in this Region \cr
\link[=kafka_list_configurations]{list_configurations} \tab Returns a list of all the MSK configurations in this Region \cr
\link[=kafka_list_kafka_versions]{list_kafka_versions} \tab Returns a list of Kafka versions \cr
\link[=kafka_list_nodes]{list_nodes} \tab Returns a list of the broker nodes in the cluster \cr
\link[=kafka_list_tags_for_resource]{list_tags_for_resource} \tab Returns a list of the tags associated with the specified resource \cr
\link[=kafka_tag_resource]{tag_resource} \tab Adds tags to the specified MSK resource \cr
\link[=kafka_untag_resource]{untag_resource} \tab Removes the tags associated with the keys that are provided in the query \cr
\link[=kafka_update_broker_count]{update_broker_count} \tab Updates the number of broker nodes in the cluster \cr
\link[=kafka_update_broker_storage]{update_broker_storage} \tab Updates the EBS storage associated with MSK brokers \cr
\link[=kafka_update_cluster_configuration]{update_cluster_configuration} \tab Updates the cluster with the configuration that is specified in the request body \cr
\link[=kafka_update_cluster_kafka_version]{update_cluster_kafka_version} \tab Updates the Apache Kafka version for the cluster \cr
\link[=kafka_update_monitoring]{update_monitoring} \tab Updates the monitoring settings for the cluster
}
}

\examples{
\dontrun{
svc <- kafka()
svc$create_cluster(
  Foo = 123
)
}

}
