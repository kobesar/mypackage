test_that("performs linear regression", {
  expect_type(my_lm(lifeExp ~ gdpPercap, my_gapminder), "double")
})
