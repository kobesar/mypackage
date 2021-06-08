my_penguins <- na.omit(my_penguins)

test_that("k-nn cross validation", {
  expect_type(my_knn_cv(my_penguins[, 3:6], my_penguins$species, 5, 5), "list")
})
