% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lexmodelsv2_operations.R
\name{lexmodelsv2_create_intent}
\alias{lexmodelsv2_create_intent}
\title{Creates an intent}
\usage{
lexmodelsv2_create_intent(
  intentName,
  description = NULL,
  parentIntentSignature = NULL,
  sampleUtterances = NULL,
  dialogCodeHook = NULL,
  fulfillmentCodeHook = NULL,
  intentConfirmationSetting = NULL,
  intentClosingSetting = NULL,
  inputContexts = NULL,
  outputContexts = NULL,
  kendraConfiguration = NULL,
  botId,
  botVersion,
  localeId,
  initialResponseSetting = NULL,
  qnAIntentConfiguration = NULL,
  qInConnectIntentConfiguration = NULL
)
}
\arguments{
\item{intentName}{[required] The name of the intent. Intent names must be unique in the locale that
contains the intent and cannot match the name of any built-in intent.}

\item{description}{A description of the intent. Use the description to help identify the
intent in lists.}

\item{parentIntentSignature}{A unique identifier for the built-in intent to base this intent on.}

\item{sampleUtterances}{An array of strings that a user might say to signal the intent. For
example, "I want a pizza", or "I want a \{PizzaSize\} pizza".

In an utterance, slot names are enclosed in curly braces ("\{", "\}")
to indicate where they should be displayed in the utterance shown to the
user..}

\item{dialogCodeHook}{Specifies that Amazon Lex invokes the alias Lambda function for each
user input. You can invoke this Lambda function to personalize user
interaction.

For example, suppose that your bot determines that the user's name is
John. You Lambda function might retrieve John's information from a
backend database and prepopulate some of the values. For example, if you
find that John is gluten intolerant, you might set the corresponding
intent slot, \code{glutenIntolerant} to \code{true}. You might find John's phone
number and set the corresponding session attribute.}

\item{fulfillmentCodeHook}{Specifies that Amazon Lex invokes the alias Lambda function when the
intent is ready for fulfillment. You can invoke this function to
complete the bot's transaction with the user.

For example, in a pizza ordering bot, the Lambda function can look up
the closest pizza restaurant to the customer's location and then place
an order on the customer's behalf.}

\item{intentConfirmationSetting}{Provides prompts that Amazon Lex sends to the user to confirm the
completion of an intent. If the user answers "no," the settings contain
a statement that is sent to the user to end the intent.}

\item{intentClosingSetting}{Sets the response that Amazon Lex sends to the user when the intent is
closed.}

\item{inputContexts}{A list of contexts that must be active for this intent to be considered
by Amazon Lex.

When an intent has an input context list, Amazon Lex only considers
using the intent in an interaction with the user when the specified
contexts are included in the active context list for the session. If the
contexts are not active, then Amazon Lex will not use the intent.

A context can be automatically activated using the \code{outputContexts}
property or it can be set at runtime.

For example, if there are two intents with different input contexts that
respond to the same utterances, only the intent with the active context
will respond.

An intent may have up to 5 input contexts. If an intent has multiple
input contexts, all of the contexts must be active to consider the
intent.}

\item{outputContexts}{A lists of contexts that the intent activates when it is fulfilled.

You can use an output context to indicate the intents that Amazon Lex
should consider for the next turn of the conversation with a customer.

When you use the \code{outputContextsList} property, all of the contexts
specified in the list are activated when the intent is fulfilled. You
can set up to 10 output contexts. You can also set the number of
conversation turns that the context should be active, or the length of
time that the context should be active.}

\item{kendraConfiguration}{Configuration information required to use the
\code{AMAZON.KendraSearchIntent} intent to connect to an Amazon Kendra index.
The \code{AMAZON.KendraSearchIntent} intent is called when Amazon Lex can't
determine another intent to invoke.}

\item{botId}{[required] The identifier of the bot associated with this intent.}

\item{botVersion}{[required] The version of the bot associated with this intent.}

\item{localeId}{[required] The identifier of the language and locale where this intent is used. All
of the bots, slot types, and slots used by the intent must have the same
locale. For more information, see \href{https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html}{Supported languages}.}

\item{initialResponseSetting}{Configuration settings for the response that is sent to the user at the
beginning of a conversation, before eliciting slot values.}

\item{qnAIntentConfiguration}{Specifies the configuration of the built-in \code{Amazon.QnAIntent}. The
\code{AMAZON.QnAIntent} intent is called when Amazon Lex can't determine
another intent to invoke. If you specify this field, you can't specify
the \code{kendraConfiguration} field.}

\item{qInConnectIntentConfiguration}{Qinconnect intent configuration details for the create intent request.}
}
\description{
Creates an intent.

See \url{https://www.paws-r-sdk.com/docs/lexmodelsv2_create_intent/} for full documentation.
}
\keyword{internal}
