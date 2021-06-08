set.seed(302)
x <- rnorm(100, mean = 0, sd = 1)

test_that("performs t-test", {
  expect_type(my_t.test(x, alternative = "two.sided", mu = 0), "list")
  expect_type(my_t.test(x, alternative = "less", mu = 0), "list")
  expect_type(my_t.test(x, alternative = "greater", mu = 0), "list")
  expect_equal(my_t.test(x, alternative = "less", mu = 0)$test_stat, t.test(x, alternative = "less", mu = 0)[[1]][[1]])
})

test_that("returns error", {
  expect_error(my_t.test(x, alternative = "left", mu = 0))
})
