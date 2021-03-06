% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/regress.R
\name{store.model}
\alias{store.model}
\title{Store residuals from a model}
\usage{
\method{store}{model}(dataset, object, name = "residuals", ...)
}
\arguments{
\item{dataset}{Dataset to append residuals to}

\item{object}{Return value from a model function}

\item{name}{Variable name(s) assigned to model residuals}

\item{...}{Additional arguments}
}
\description{
Store residuals from a model
}
\details{
The store method for objects of class "model". Adds model residuals to the dataset while handling missing values and filters. See \url{https://radiant-rstats.github.io/docs/model/regress.html} for an example in Radiant
}
\examples{
regress(diamonds, rvar = "price", evar = c("carat", "cut"), data_filter = "price > 1000") \%>\%
  store(diamonds, ., name = "resid") \%>\%
  head()

}
