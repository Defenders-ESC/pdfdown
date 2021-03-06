% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/download_pdf.R
\name{download_pdf}
\alias{download_pdf}
\title{Download a PDF from a URL}
\usage{
download_pdf(url, file, quiet = FALSE, overwrite = FALSE, pause = TRUE)
}
\arguments{
\item{url}{The URL for a PDF}

\item{file}{File to which the PDF will be downloaded}

\item{quiet}{Suppress a message about which URL is being processed [default=FALSE]}

\item{overwrite}{Overwrite an existing file of the same name [default=FALSE]}

\item{pause}{Whether to pause for 0.5-3 seconds during scraping [default=TRUE]}
}
\value{
A data.frame with url, destination, success, pdfCheck
}
\description{
Simple function to download a PDF, robustly.
}
\details{
Scraping PDFs from the web can run into little hitches that make
writing a scraper annoying. This simplifies PDF scraping by creating a
dedicated function and support functions to, e.g., test for PDFness. Ensures
URL encoding, handles missing URLs gracefully. The filename is the basename
of the URL with " " replaced with "_". Includes the \code{pause} parameter
to limit the rate at which requests hit the hosting servers.

TODO: Have the overwrite check work on the MD5 hash of files in the download
\code{sudb} rather than relying on file names.
}
\examples{
\dontrun{
  result <- download_pdf(url = "https://goo.gl/I3P3A3",
                         file = "~/Downloads/test.pdf")
}
}

