% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/secretsmanager_operations.R
\name{secretsmanager_get_random_password}
\alias{secretsmanager_get_random_password}
\title{Generates a random password}
\usage{
secretsmanager_get_random_password(
  PasswordLength = NULL,
  ExcludeCharacters = NULL,
  ExcludeNumbers = NULL,
  ExcludePunctuation = NULL,
  ExcludeUppercase = NULL,
  ExcludeLowercase = NULL,
  IncludeSpace = NULL,
  RequireEachIncludedType = NULL
)
}
\arguments{
\item{PasswordLength}{The length of the password. If you don't include this parameter, the
default length is 32 characters.}

\item{ExcludeCharacters}{A string of the characters that you don't want in the password.}

\item{ExcludeNumbers}{Specifies whether to exclude numbers from the password. If you don't
include this switch, the password can contain numbers.}

\item{ExcludePunctuation}{Specifies whether to exclude the following punctuation characters from
the password:
\verb{! \\" # $ \% & \\' ( ) * + , - . / : ; < = > ? @ [ \\ ] ^ _ \\` \{ | \} ~}.
If you don't include this switch, the password can contain punctuation.}

\item{ExcludeUppercase}{Specifies whether to exclude uppercase letters from the password. If you
don't include this switch, the password can contain uppercase letters.}

\item{ExcludeLowercase}{Specifies whether to exclude lowercase letters from the password. If you
don't include this switch, the password can contain lowercase letters.}

\item{IncludeSpace}{Specifies whether to include the space character. If you include this
switch, the password can contain space characters.}

\item{RequireEachIncludedType}{Specifies whether to include at least one upper and lowercase letter,
one number, and one punctuation. If you don't include this switch, the
password contains at least one of every character type.}
}
\description{
Generates a random password. We recommend that you specify the maximum length and include every character type that the system you are generating a password for can support. By default, Secrets Manager uses uppercase and lowercase letters, numbers, and the following characters in passwords: \verb{!\\\\"#$\%&\\'()*+,-./:;<=>?@[\\\]^_\\`\{|\}~}

See \url{https://www.paws-r-sdk.com/docs/secretsmanager_get_random_password/} for full documentation.

[\]: R:\%5C\%5C\%5C
[https://www.paws-r-sdk.com/docs/secretsmanager_get_random_password/]: R:https://www.paws-r-sdk.com/docs/secretsmanager_get_random_password/
}
\keyword{internal}
