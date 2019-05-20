% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/comprehend_operations.R
\name{comprehend_detect_syntax}
\alias{comprehend_detect_syntax}
\title{Inspects text for syntax and the part of speech of words in the document}
\usage{
comprehend_detect_syntax(Text, LanguageCode)
}
\arguments{
\item{Text}{[required] A UTF-8 string. Each string must contain fewer that 5,000 bytes of UTF
encoded characters.}

\item{LanguageCode}{[required] The language code of the input documents. You can specify English
("en") or Spanish ("es").}
}
\description{
Inspects text for syntax and the part of speech of words in the
document. For more information, how-syntax.
}
\section{Request syntax}{
\preformatted{svc$detect_syntax(
  Text = "string",
  LanguageCode = "en"|"es"|"fr"|"de"|"it"|"pt"
)
}
}

\keyword{internal}