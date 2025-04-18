% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/acmpca_operations.R
\name{acmpca_update_certificate_authority}
\alias{acmpca_update_certificate_authority}
\title{Updates the status or configuration of a private certificate authority
(CA)}
\usage{
acmpca_update_certificate_authority(
  CertificateAuthorityArn,
  RevocationConfiguration = NULL,
  Status = NULL
)
}
\arguments{
\item{CertificateAuthorityArn}{[required] Amazon Resource Name (ARN) of the private CA that issued the certificate
to be revoked. This must be of the form:

\code{arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 }}

\item{RevocationConfiguration}{Contains information to enable support for Online Certificate Status
Protocol (OCSP), certificate revocation list (CRL), both protocols, or
neither. If you don't supply this parameter, existing capibilites remain
unchanged. For more information, see the
\href{https://docs.aws.amazon.com/privateca/latest/APIReference/API_OcspConfiguration.html}{OcspConfiguration}
and
\href{https://docs.aws.amazon.com/privateca/latest/APIReference/API_CrlConfiguration.html}{CrlConfiguration}
types.

The following requirements apply to revocation configurations.
\itemize{
\item A configuration disabling CRLs or OCSP must contain only the
\code{Enabled=False} parameter, and will fail if other parameters such as
\code{CustomCname} or \code{ExpirationInDays} are included.
\item In a CRL configuration, the \code{S3BucketName} parameter must conform to
\href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html}{Amazon S3 bucket naming rules}.
\item A configuration containing a custom Canonical Name (CNAME) parameter
for CRLs or OCSP must conform to
\href{https://www.ietf.org/rfc/rfc2396.txt}{RFC2396} restrictions on the
use of special characters in a CNAME.
\item In a CRL or OCSP configuration, the value of a CNAME parameter must
not include a protocol prefix such as "http://" or "https://".
}

If you update the \code{S3BucketName} of
\href{https://docs.aws.amazon.com/privateca/latest/APIReference/API_CrlConfiguration.html}{CrlConfiguration},
you can break revocation for existing certificates. In other words, if
you call
\code{\link[=acmpca_update_certificate_authority]{update_certificate_authority}} to
update the CRL configuration's S3 bucket name, Amazon Web Services
Private CA only writes CRLs to the new S3 bucket. Certificates issued
prior to this point will have the old S3 bucket name in your CRL
Distribution Point (CDP) extension, essentially breaking revocation. If
you must update the S3 bucket, you'll need to reissue old certificates
to keep the revocation working. Alternatively, you can use a
\href{https://docs.aws.amazon.com/privateca/latest/APIReference/API_CrlConfiguration.html#privateca-Type-CrlConfiguration-CustomCname}{CustomCname}
in your CRL configuration if you might need to change the S3 bucket name
in the future.}

\item{Status}{Status of your private CA.}
}
\description{
Updates the status or configuration of a private certificate authority (CA). Your private CA must be in the \code{ACTIVE} or \code{DISABLED} state before you can update it. You can disable a private CA that is in the \code{ACTIVE} state or make a CA that is in the \code{DISABLED} state active again.

See \url{https://www.paws-r-sdk.com/docs/acmpca_update_certificate_authority/} for full documentation.
}
\keyword{internal}
