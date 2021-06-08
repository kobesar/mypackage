test_that("performs linear regression", {
  expect_type(my_lm(lifeExp ~ gdpPercap, my_gapminder), "double")
  expect_equal(my_lm(lifeExp ~ gdpPercap, my_gapminder)[, 1], lm(lifeExp ~ gdpPercap, my_gapminder)[1][[1]])
})
