% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ovarianCancer-data.R
\docType{data}
\name{ovarianCancer}
\alias{ovarianCancer}
\title{Data on Ovarian Cancer (NCI PBSII Data)}
\format{
An object of class "data.frame".
}
\source{
\href{http://leo.ugr.es/elvira/DBCRepository/OvarianCancer/Ovarian-PBSII-061902.zip}{ZIP Archive}
}
\usage{
data(ovarianCancer)
}
\description{
The database used correspond to proteomic spectra, generated by mass spectroscopy. This data dates from 6-19-02, 
and includes 91 controls (Normal) and 162 ovarian cancers. The raw spectral data of each sample contains the relative 
amplitude of the intensity at each molecular mass/charge (M/Z) identity. There are total 15154 M/Z identities. 
The intensity values were normalized according to the formula: \eqn{NV = (V-Min)/(Max-Min)} where \eqn{NV} is the normalized 
value, \eqn{V} the raw value, \eqn{Min} the minimum intensity and \eqn{Max} the maximum intensity. The normalization is done over 
all the 253 samples for all 15154 M/Z identities. After the normalization, each intensity value falls within the 
range of 0 to 1.
}
\examples{
library(DET)
data(ovarianCancer)
response = as.factor(ovarianCancer$response)
predictors = matrix(c(as.numeric(ovarianCancer[[2]]),
                      as.numeric(ovarianCancer[[3]])), ncol = 2)
colnames(predictors) = c("Protein 1689", "Protein 1737")
detCurves =
  detc(
    response,
    predictors,
    names = colnames(predictors),
    positive = "Cancer"
  )
plot(detCurves, main = "Proteomic patterns")

}
\references{
Emanuel F Petricoin et al. (2002) The Lancet 359:572-577
(\href{http://leo.ugr.es/elvira/DBCRepository/OvarianCancer/OvarianCancer-NCI-PBSII.html}{PubMed})
}
\keyword{cancer}
\keyword{datasets}
\keyword{ovarian}
