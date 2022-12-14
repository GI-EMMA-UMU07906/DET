% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/measures.R
\name{EER}
\alias{EER}
\title{Equal Error Rate computation}
\usage{
EER(fpr, fnr)
}
\arguments{
\item{fpr}{A numeric vector representing the False Positive Rates.}

\item{fnr}{A numeric vector representing the False Negative Rates.}
}
\value{
The Equal Error Rate (EER).
}
\description{
From two vectors of false positive and false negative rates which define the points of the curve, the function computes the Equal Error Rate (EER).
}
