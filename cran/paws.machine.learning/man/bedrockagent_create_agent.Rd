% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bedrockagent_operations.R
\name{bedrockagent_create_agent}
\alias{bedrockagent_create_agent}
\title{Creates an agent that orchestrates interactions between foundation
models, data sources, software applications, user conversations, and
APIs to carry out tasks to help customers}
\usage{
bedrockagent_create_agent(
  agentCollaboration = NULL,
  agentName,
  agentResourceRoleArn = NULL,
  clientToken = NULL,
  customOrchestration = NULL,
  customerEncryptionKeyArn = NULL,
  description = NULL,
  foundationModel = NULL,
  guardrailConfiguration = NULL,
  idleSessionTTLInSeconds = NULL,
  instruction = NULL,
  memoryConfiguration = NULL,
  orchestrationType = NULL,
  promptOverrideConfiguration = NULL,
  tags = NULL
)
}
\arguments{
\item{agentCollaboration}{The agent's collaboration role.}

\item{agentName}{[required] A name for the agent that you create.}

\item{agentResourceRoleArn}{The Amazon Resource Name (ARN) of the IAM role with permissions to
invoke API operations on the agent.}

\item{clientToken}{A unique, case-sensitive identifier to ensure that the API request
completes no more than one time. If this token matches a previous
request, Amazon Bedrock ignores the request, but does not return an
error. For more information, see \href{https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html}{Ensuring idempotency}.}

\item{customOrchestration}{Contains details of the custom orchestration configured for the agent.}

\item{customerEncryptionKeyArn}{The Amazon Resource Name (ARN) of the KMS key with which to encrypt the
agent.}

\item{description}{A description of the agent.}

\item{foundationModel}{The identifier for the model that you want to be used for orchestration
by the agent you create.

The \code{modelId} to provide depends on the type of model or throughput that
you use:
\itemize{
\item If you use a base model, specify the model ID or its ARN. For a list
of model IDs for base models, see \href{https://docs.aws.amazon.com/bedrock/latest/userguide/models-supported.html#model-ids-arns}{Amazon Bedrock base model IDs (on-demand throughput)}
in the Amazon Bedrock User Guide.
\item If you use an inference profile, specify the inference profile ID or
its ARN. For a list of inference profile IDs, see \href{https://docs.aws.amazon.com/bedrock/latest/userguide/inference-profiles-support.html}{Supported Regions and models for cross-region inference}
in the Amazon Bedrock User Guide.
\item If you use a provisioned model, specify the ARN of the Provisioned
Throughput. For more information, see \href{https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html}{Run inference using a Provisioned Throughput}
in the Amazon Bedrock User Guide.
\item If you use a custom model, first purchase Provisioned Throughput for
it. Then specify the ARN of the resulting provisioned model. For
more information, see \href{https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html}{Use a custom model in Amazon Bedrock}
in the Amazon Bedrock User Guide.
\item If you use an \href{https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html}{imported model},
specify the ARN of the imported model. You can get the model ARN
from a successful call to
\href{https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html}{CreateModelImportJob}
or from the Imported models page in the Amazon Bedrock console.
}}

\item{guardrailConfiguration}{The unique Guardrail configuration assigned to the agent when it is
created.}

\item{idleSessionTTLInSeconds}{The number of seconds for which Amazon Bedrock keeps information about a
user's conversation with the agent.

A user interaction remains active for the amount of time specified. If
no conversation occurs during this time, the session expires and Amazon
Bedrock deletes any data provided before the timeout.}

\item{instruction}{Instructions that tell the agent what it should do and how it should
interact with users.}

\item{memoryConfiguration}{Contains the details of the memory configured for the agent.}

\item{orchestrationType}{Specifies the type of orchestration strategy for the agent. This is set
to \code{DEFAULT} orchestration type, by default.}

\item{promptOverrideConfiguration}{Contains configurations to override prompts in different parts of an
agent sequence. For more information, see \href{https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html}{Advanced prompts}.}

\item{tags}{Any tags that you want to attach to the agent.}
}
\description{
Creates an agent that orchestrates interactions between foundation models, data sources, software applications, user conversations, and APIs to carry out tasks to help customers.

See \url{https://www.paws-r-sdk.com/docs/bedrockagent_create_agent/} for full documentation.
}
\keyword{internal}
