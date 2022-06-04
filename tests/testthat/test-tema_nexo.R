context("nexo")

test_that("tema_nexo funciona", {
  expect_is(tema_nexo(), "theme")
})

test_that("linha_poder360 funciona", {
  expect_type(linha_poder360(plot), "list")
})
