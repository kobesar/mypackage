% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/my_knn_cv.R
\name{my_knn_cv}
\alias{my_knn_cv}
\title{k-nearest neighbors cross validation}
\usage{
my_knn_cv(train, cl, k_nn, k_cv)
}
\arguments{
\item{train}{Dataframe containing the data used to predict}

\item{cl}{Vector containing the true class}

\item{k_nn}{Numeric indicating the number of neighbors}

\item{k_cv}{Numeric indicating the number of folds}
}
\value{
List of predictions and cross validation error
}
\description{
This function applies k-nearest neighbors cross validation to given
data frame, true class, n nearest neighbors, and n folds
}
\examples{
my_penguins <- na.omit(my_penguins)

my_knn_cv(my_penguins[, 3:6], my_penguins$species, 5, 5)

}
\keyword{prediction}
