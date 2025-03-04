test_that("tema_poder360 funciona", {
  expect_s3_class(tema_poder360(), "theme")
})

test_that("linha_poder360 funciona", {
  expect_type(linha_poder360(plot), "list")
})
