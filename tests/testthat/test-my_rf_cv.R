test_that("performs random forest cross validation", {
  expect_type(my_rf_cv(5), "list")
})
