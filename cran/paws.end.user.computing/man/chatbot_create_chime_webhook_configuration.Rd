% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chatbot_operations.R
\name{chatbot_create_chime_webhook_configuration}
\alias{chatbot_create_chime_webhook_configuration}
\title{Creates an AWS Chatbot configuration for Amazon Chime}
\usage{
chatbot_create_chime_webhook_configuration(
  WebhookDescription,
  WebhookUrl,
  SnsTopicArns,
  IamRoleArn,
  ConfigurationName,
  LoggingLevel = NULL,
  Tags = NULL
)
}
\arguments{
\item{WebhookDescription}{[required] A description of the webhook. We recommend using the convention
\code{RoomName/WebhookName}.

For more information, see \href{https://docs.aws.amazon.com/chatbot/latest/adminguide/chime-setup.html}{Tutorial: Get started with Amazon Chime}
in the \emph{AWS Chatbot Administrator Guide}.}

\item{WebhookUrl}{[required] The URL for the Amazon Chime webhook.}

\item{SnsTopicArns}{[required] The Amazon Resource Names (ARNs) of the SNS topics that deliver
notifications to AWS Chatbot.}

\item{IamRoleArn}{[required] A user-defined role that AWS Chatbot assumes. This is not the
service-linked role.

For more information, see \href{https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html}{IAM policies for AWS Chatbot}
in the \emph{AWS Chatbot Administrator Guide}.}

\item{ConfigurationName}{[required] The name of the configuration.}

\item{LoggingLevel}{Logging levels include \code{ERROR}, \code{INFO}, or \code{NONE}.}

\item{Tags}{A map of tags assigned to a resource. A tag is a string-to-string map of
key-value pairs.}
}
\description{
Creates an AWS Chatbot configuration for Amazon Chime.

See \url{https://www.paws-r-sdk.com/docs/chatbot_create_chime_webhook_configuration/} for full documentation.
}
\keyword{internal}
