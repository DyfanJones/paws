% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chatbot_operations.R
\name{chatbot_update_microsoft_teams_channel_configuration}
\alias{chatbot_update_microsoft_teams_channel_configuration}
\title{Updates an Microsoft Teams channel configuration}
\usage{
chatbot_update_microsoft_teams_channel_configuration(
  ChatConfigurationArn,
  ChannelId,
  ChannelName = NULL,
  SnsTopicArns = NULL,
  IamRoleArn = NULL,
  LoggingLevel = NULL,
  GuardrailPolicyArns = NULL,
  UserAuthorizationRequired = NULL
)
}
\arguments{
\item{ChatConfigurationArn}{[required] The Amazon Resource Name (ARN) of the TeamsChannelConfiguration to
update.}

\item{ChannelId}{[required] The ID of the Microsoft Teams channel.}

\item{ChannelName}{The name of the Microsoft Teams channel.}

\item{SnsTopicArns}{The Amazon Resource Names (ARNs) of the SNS topics that deliver
notifications to AWS Chatbot.}

\item{IamRoleArn}{A user-defined role that AWS Chatbot assumes. This is not the
service-linked role.

For more information, see \href{https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html}{IAM policies for AWS Chatbot}
in the \emph{AWS Chatbot Administrator Guide}.}

\item{LoggingLevel}{Logging levels include \code{ERROR}, \code{INFO}, or \code{NONE}.}

\item{GuardrailPolicyArns}{The list of IAM policy ARNs that are applied as channel guardrails. The
AWS managed \code{AdministratorAccess} policy is applied by default if this
is not set.}

\item{UserAuthorizationRequired}{Enables use of a user role requirement in your chat configuration.}
}
\description{
Updates an Microsoft Teams channel configuration.

See \url{https://www.paws-r-sdk.com/docs/chatbot_update_microsoft_teams_channel_configuration/} for full documentation.
}
\keyword{internal}
