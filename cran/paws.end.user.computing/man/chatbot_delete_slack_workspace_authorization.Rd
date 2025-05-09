% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chatbot_operations.R
\name{chatbot_delete_slack_workspace_authorization}
\alias{chatbot_delete_slack_workspace_authorization}
\title{Deletes the Slack workspace authorization that allows channels to be
configured in that workspace}
\usage{
chatbot_delete_slack_workspace_authorization(SlackTeamId)
}
\arguments{
\item{SlackTeamId}{[required] The ID of the Slack workspace authorized with AWS Chatbot.}
}
\description{
Deletes the Slack workspace authorization that allows channels to be configured in that workspace. This requires all configured channels in the workspace to be deleted.

See \url{https://www.paws-r-sdk.com/docs/chatbot_delete_slack_workspace_authorization/} for full documentation.
}
\keyword{internal}
