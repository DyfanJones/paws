% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bedrockagent_operations.R
\name{bedrockagent_create_agent_action_group}
\alias{bedrockagent_create_agent_action_group}
\title{Creates an action group for an agent}
\usage{
bedrockagent_create_agent_action_group(
  actionGroupExecutor = NULL,
  actionGroupName,
  actionGroupState = NULL,
  agentId,
  agentVersion,
  apiSchema = NULL,
  clientToken = NULL,
  description = NULL,
  functionSchema = NULL,
  parentActionGroupSignature = NULL,
  parentActionGroupSignatureParams = NULL
)
}
\arguments{
\item{actionGroupExecutor}{The Amazon Resource Name (ARN) of the Lambda function containing the
business logic that is carried out upon invoking the action or the
custom control method for handling the information elicited from the
user.}

\item{actionGroupName}{[required] The name to give the action group.}

\item{actionGroupState}{Specifies whether the action group is available for the agent to invoke
or not when sending an
\href{https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html}{InvokeAgent}
request.}

\item{agentId}{[required] The unique identifier of the agent for which to create the action group.}

\item{agentVersion}{[required] The version of the agent for which to create the action group.}

\item{apiSchema}{Contains either details about the S3 object containing the OpenAPI
schema for the action group or the JSON or YAML-formatted payload
defining the schema. For more information, see \href{https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html}{Action group OpenAPI schemas}.}

\item{clientToken}{A unique, case-sensitive identifier to ensure that the API request
completes no more than one time. If this token matches a previous
request, Amazon Bedrock ignores the request, but does not return an
error. For more information, see \href{https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html}{Ensuring idempotency}.}

\item{description}{A description of the action group.}

\item{functionSchema}{Contains details about the function schema for the action group or the
JSON or YAML-formatted payload defining the schema.}

\item{parentActionGroupSignature}{Specify a built-in or computer use action for this action group. If you
specify a value, you must leave the \code{description}, \code{apiSchema}, and
\code{actionGroupExecutor} fields empty for this action group.
\itemize{
\item To allow your agent to request the user for additional information
when trying to complete a task, set this field to
\code{AMAZON.UserInput}.
\item To allow your agent to generate, run, and troubleshoot code when
trying to complete a task, set this field to
\code{AMAZON.CodeInterpreter}.
\item To allow your agent to use an Anthropic computer use tool, specify
one of the following values.

Computer use is a new Anthropic Claude model capability (in beta)
available with Anthropic Claude 3.7 Sonnet and Claude 3.5 Sonnet v2
only. When operating computer use functionality, we recommend taking
additional security precautions, such as executing computer actions
in virtual environments with restricted data access and limited
internet connectivity. For more information, see \href{https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html}{Configure an Amazon Bedrock Agent to complete tasks with computer use tools}.
\itemize{
\item \code{ANTHROPIC.Computer} - Gives the agent permission to use the
mouse and keyboard and take screenshots.
\item \code{ANTHROPIC.TextEditor} - Gives the agent permission to view,
create and edit files.
\item \code{ANTHROPIC.Bash} - Gives the agent permission to run commands in
a bash shell.
}
}}

\item{parentActionGroupSignatureParams}{The configuration settings for a computer use action.

Computer use is a new Anthropic Claude model capability (in beta)
available with Anthropic Claude 3.7 Sonnet and Claude 3.5 Sonnet v2
only. For more information, see \href{https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html}{Configure an Amazon Bedrock Agent to complete tasks with computer use tools}.}
}
\description{
Creates an action group for an agent. An action group represents the actions that an agent can carry out for the customer by defining the APIs that an agent can call and the logic for calling them.

See \url{https://www.paws-r-sdk.com/docs/bedrockagent_create_agent_action_group/} for full documentation.
}
\keyword{internal}
