% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssm_operations.R
\name{ssm_describe_patch_properties}
\alias{ssm_describe_patch_properties}
\title{Lists the properties of available patches organized by product, product
family, classification, severity, and other properties of available
patches}
\usage{
ssm_describe_patch_properties(OperatingSystem, Property, PatchSet,
  MaxResults, NextToken)
}
\arguments{
\item{OperatingSystem}{[required] The operating system type for which to list patches.}

\item{Property}{[required] The patch property for which you want to view patch details.}

\item{PatchSet}{Indicates whether to list patches for the Windows operating system or
for Microsoft applications. Not applicable for Linux operating systems.}

\item{MaxResults}{The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.}

\item{NextToken}{The token for the next set of items to return. (You received this token
from a previous call.)}
}
\description{
Lists the properties of available patches organized by product, product
family, classification, severity, and other properties of available
patches. You can use the reported properties in the filters you specify
in requests for actions such as CreatePatchBaseline,
UpdatePatchBaseline, DescribeAvailablePatches, and
DescribePatchBaselines.
}
\details{
The following section lists the properties that can be used in filters
for each major operating system type:
\subsection{WINDOWS}{

Valid properties: PRODUCT, PRODUCT\\_FAMILY, CLASSIFICATION,
MSRC\\_SEVERITY
}

\subsection{AMAZON\\_LINUX}{

Valid properties: PRODUCT, CLASSIFICATION, SEVERITY
}

\subsection{AMAZON\\_LINUX\\_2}{

Valid properties: PRODUCT, CLASSIFICATION, SEVERITY
}

\subsection{UBUNTU}{

Valid properties: PRODUCT, PRIORITY
}

\subsection{REDHAT\\_ENTERPRISE\\_LINUX}{

Valid properties: PRODUCT, CLASSIFICATION, SEVERITY
}

\subsection{SUSE}{

Valid properties: PRODUCT, CLASSIFICATION, SEVERITY
}

\subsection{CENTOS}{

Valid properties: PRODUCT, CLASSIFICATION, SEVERITY
}
}
\section{Request syntax}{
\preformatted{svc$describe_patch_properties(
  OperatingSystem = "WINDOWS"|"AMAZON_LINUX"|"AMAZON_LINUX_2"|"UBUNTU"|"REDHAT_ENTERPRISE_LINUX"|"SUSE"|"CENTOS"|"ORACLE_LINUX"|"DEBIAN",
  Property = "PRODUCT"|"PRODUCT_FAMILY"|"CLASSIFICATION"|"MSRC_SEVERITY"|"PRIORITY"|"SEVERITY",
  PatchSet = "OS"|"APPLICATION",
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
