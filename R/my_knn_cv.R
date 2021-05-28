#' k-nearest neighbors cross validation
#'
#' This function applies k-nearest neighbors cross validation to given
#' data frame, true class, n nearest neighbors, and n folds
#'
#' @param train Dataframe containing the data used to predict
#' @param cl Vector containing the true class
#' @param k_nn Numeric indicating the number of neighbors
#' @param k_cv Numeric indicating the number of colds
#' @keywords cross validation
#'
#' @return List of predictions and cross validation error
#'
#' @examples
#' penguins <- get("my_penguins")
#'
#' my_knn_cv(penguins[, 3:6], penguins$species, 5, 5)
#'
#' @export
my_knn_cv <- function(train, cl, k_nn, k_cv) {

  # Sets seed of random number generator
  set.seed(302)

  # Generate random folds
  fold <- sample(rep(1:k_cv, length = length(cl)))

  # Assign random folds
  data <- data.frame(train, "labels" = cl, "fold" = fold, "pred" = NA)

  # Initialize vector to hold misclassification error
  miss_rate <- c()

  for (i in 1:k_cv) {
    data_train <- data[data$fold != i, ] # Select all other folds
    data_test <- data[data$fold == i, ] # Select single fold

    data_train_labs <- data_train$labels # Select labels
    data_test_labs <- data_test$labels # Select labels

    last_index <- length(data) - 3

    # Prediction of testing labels using knn
    pred <- as.character(class::knn(data_train[, 1:last_index],
                             data_test[, 1:last_index],
                             cl = data_train_labs, k = k_nn))

    # Store misclassification rate
    miss_rate[i] <- mean(pred != data_test_labs)

    # Store predictions
    data$pred[data$fold == i] <- pred
  }

  # Make result table
  res_list <- list("n_neighbors" = k_nn, "n_clusters" = k_cv,
                   "class" = data$pred, "cv_error" = mean(miss_rate))

  # Return matrix
  return(res_list)
}
