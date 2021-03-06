% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/my_lm.R
\name{my_lm}
\alias{my_lm}
\title{linear model}
\usage{
my_lm(formula, data)
}
\arguments{
\item{formula}{A R formula indicating}

\item{data}{Dataframe that includes the data the user wants to apply
regression to}
}
\value{
Table of coefficient estimate, coefficient standard error,
coefficient t-value, coefficient p-value
}
\description{
This function applies the linear regression
}
\examples{
my_lm(lifeExp ~ gdpPercap + continent, my_gapminder)

}
\keyword{prediction}
