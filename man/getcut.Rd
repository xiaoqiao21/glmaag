% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/funcn.R
\name{getcut}
\alias{getcut}
\title{Get optimal cut points for binary or right censored phenotype}
\usage{
getcut(pre, act, fam = "Logistic")
}
\arguments{
\item{pre}{predicted value}

\item{act}{actual values (class for binary phenotype and Surv object for right censored phenotype)}

\item{fam}{the family of the outcome, can be "Gaussian", "Logistic" or "Cox"}
}
\value{
optimal cut point
}
\description{
Obtain optimal cut point based on Youden index for binary phenotype and log rank test for right censored phenotype.
}
\examples{
x <- rnorm(100)
y <- as.numeric(x + rlogis(100) > 0)
getcut(x, y)
}
