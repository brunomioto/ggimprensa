test_that("tema_folha funciona", {
  expect_s3_class(tema_folha(), "theme")
})

test_that("scale_fill_folha funciona", {
  expect_s3_class(scale_fill_folha(), "ScaleDiscrete")
})

test_that("scale_color_folha funciona", {
  expect_s3_class(scale_color_folha(), "ScaleDiscrete")
})
