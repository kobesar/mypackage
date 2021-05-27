#' @importFrom stats
#' linear model
#'
#' This function applies the linear regression
#'
#' @param formula A R formula indicating
#' @param data Dataframe that includes the data the user wants to apply
#' regression to
#'
#' @return Table of coefficient estimate, coefficient standard error,
#' coefficient t-value, coefficient p-value
#'
#' @examples
#'my_lm(lifeExp ~ gdpPercap + continent, gapminder)
#'
#' @export
my_lm <- function(formula, data) {

  # Compute model matrix
  x <- model.matrix(formula, data)

  # Compute model frame
  model <- model.frame(formula, data)

  # Compute model response
  y <- model.response(model)

  # Compute regression coefficients
  beta <- solve((t(x) %*% x)) %*% t(x) %*% y

  # Compute degrees of freedom
  df <- nrow(data) - length(beta)

  # Estimate sigma^squared
  sigma_squared <- sum((y - x %*% beta)^2 / df)

  # Compute standard error of coefficients
  beta_se <- sqrt(diag(sigma_squared * solve(t(x) %*% x)))

  # Compute t value
  t <- beta / beta_se

  # Compute p-value for t-test
  p <- stats::pt(abs(t), df, lower.tail = FALSE) * 2

  # Combine all the necessary values into a vector
  result <- cbind(beta, beta_se, t, p)

  # Give the column names for values
  colnames(result) <- c("Estimate", "Std. Error", "t value", "Pr(>|t|)")

  # Return summary table
  result
}
