test_that("La fonction demi_perimetre renvoie les bonnes valeurs", {
  expect_equal(demi_perimetre(3, 4, 5), 6)
  expect_equal(demi_perimetre(7, 24, 25), 28)
  expect_equal(demi_perimetre(4, 6, 8), 9)
})
