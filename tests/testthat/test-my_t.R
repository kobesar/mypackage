set.seed(302)
x <- rnorm(100, mean = 0, sd = 1)

test_that("performs t-test", {
  expect_type(my_t.test(x, alternative = "less", mu = 0), "list")
})
