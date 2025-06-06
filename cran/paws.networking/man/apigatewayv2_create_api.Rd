% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigatewayv2_operations.R
\name{apigatewayv2_create_api}
\alias{apigatewayv2_create_api}
\title{Creates an Api resource}
\usage{
apigatewayv2_create_api(
  ApiKeySelectionExpression = NULL,
  CorsConfiguration = NULL,
  CredentialsArn = NULL,
  Description = NULL,
  DisableSchemaValidation = NULL,
  DisableExecuteApiEndpoint = NULL,
  IpAddressType = NULL,
  Name,
  ProtocolType,
  RouteKey = NULL,
  RouteSelectionExpression = NULL,
  Tags = NULL,
  Target = NULL,
  Version = NULL
)
}
\arguments{
\item{ApiKeySelectionExpression}{An API key selection expression. Supported only for WebSocket APIs. See
\href{https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions}{API Key Selection Expressions}.}

\item{CorsConfiguration}{A CORS configuration. Supported only for HTTP APIs. See \href{https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html}{Configuring CORS}
for more information.}

\item{CredentialsArn}{This property is part of quick create. It specifies the credentials
required for the integration, if any. For a Lambda integration, three
options are available. To specify an IAM Role for API Gateway to assume,
use the role's Amazon Resource Name (ARN). To require that the caller's
identity be passed through from the request, specify
arn:aws:iam::\emph{:user/}. To use resource-based permissions on supported
AWS services, specify null. Currently, this property is not used for
HTTP integrations. Supported only for HTTP APIs.}

\item{Description}{The description of the API.}

\item{DisableSchemaValidation}{Avoid validating models when creating a deployment. Supported only for
WebSocket APIs.}

\item{DisableExecuteApiEndpoint}{Specifies whether clients can invoke your API by using the default
execute-api endpoint. By default, clients can invoke your API with the
default https://\{api_id\}.execute-api.\{region\}.amazonaws.com
endpoint. To require that clients use a custom domain name to invoke
your API, disable the default endpoint.}

\item{IpAddressType}{The IP address types that can invoke the API.}

\item{Name}{[required] The name of the API.}

\item{ProtocolType}{[required] The API protocol.}

\item{RouteKey}{This property is part of quick create. If you don't specify a routeKey,
a default route of $default is created. The $default route acts as a
catch-all for any request made to your API, for a particular stage. The
$default route key can't be modified. You can add routes after creating
the API, and you can update the route keys of additional routes.
Supported only for HTTP APIs.}

\item{RouteSelectionExpression}{The route selection expression for the API. For HTTP APIs, the
routeSelectionExpression must be $\{request.method\}
$\{request.path\}. If not provided, this will be the default for HTTP
APIs. This property is required for WebSocket APIs.}

\item{Tags}{The collection of tags. Each tag element is associated with a given
resource.}

\item{Target}{This property is part of quick create. Quick create produces an API with
an integration, a default catch-all route, and a default stage which is
configured to automatically deploy changes. For HTTP integrations,
specify a fully qualified URL. For Lambda integrations, specify a
function ARN. The type of the integration will be HTTP_PROXY or
AWS_PROXY, respectively. Supported only for HTTP APIs.}

\item{Version}{A version identifier for the API.}
}
\description{
Creates an Api resource.

See \url{https://www.paws-r-sdk.com/docs/apigatewayv2_create_api/} for full documentation.
}
\keyword{internal}
