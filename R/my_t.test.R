#' t-test
#'
#' This function applies the t-test
#'
#' @param x Vector
#' @param alternative Character indicating
#' @param mu Numeric indicating
#'
#' @return List of test statistic, degrees of freedom, alternative hypothesis,
#' and p-value
#'
#' @examples
#' x <- rnorm(10, mean = 0, sd = 1)
#' my_t.test(x, "two.sided", 1)
#'
#' @export
my_t.test <- function(x, alternative, mu) {
  # Checks if alternative hypothesis is valid
  if (!(alternative %in% c("two.sided", "less", "greater"))) {
    # Returns error message
    stop("Alternative Hypothesis has to be one of: two.sided, less, or greater. Not '", alternative, "'.")
  }

  # Compute standard error
  se <- stats::sd(x) / sqrt(length(x))

  # Compute the mean of vector
  x_bar <- mean(x)

  # Compute test statistic
  t <- (x_bar - mu) / se

  # Compute degrees of freedom
  df <- length(x) - 1

  # Compute area under curve
  if (alternative == "less") { # Check if alternative is less
    p <- stats::pt(t, df, lower.tail = TRUE) # Compute area of lower tail
  } else if (alternative == "greater") { # Check if alternative is greater
    p <- stats::pt(t, df, lower.tail = FALSE) # Compute area of upper tail
  } else { # If alternative is two tailed
    p <- stats::pt(abs(t), df, lower.tail = FALSE) * 2 # Compute area of upper tail and multiply by 2.
  }

  # Make list of all the components
  list("test_stat" = t, "df" = df, "alternative" = alternative, "p_val" = p)
}
