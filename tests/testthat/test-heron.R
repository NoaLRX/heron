test_that("La fonction heron renvoie les bonnes valeurs", {
  expect_equal(heron(3, 4, 5), 6)
  expect_equal(heron(7, 24, 25), 84)
  expect_equal(heron(4, 6, 8), 11.61895)
})

test_that("Heron retourne une erreur pour des valeurs non-numeriques", {
  expect_error(heron("lettre", 4, 5), "les paramètres doivent tous être de formes numériques")
  expect_error(heron(3, "lettre", 5), "les paramètres doivent tous être de formes numériques")
  expect_error(heron(3, 4, "lettre"), "les paramètres doivent tous être de formes numériques")
})

test_that("Heron retourne une erreur pour des valeurs qui ne sont pas positives", {
  expect_error(heron(-3, 4, 5), "les paramètres doivent tous être > 0")
  expect_error(heron(3, -4, 5), "les paramètres doivent tous être > 0")
  expect_error(heron(3, 4, -5), "les paramètres doivent tous être > 0")
})

test_that("Heron retourne une erreur si une des valeurs est égales à 0", {
  expect_error(heron(0, 4, 5), "Attention, au mois l'un des paramètres est égale à 0")
  expect_error(heron(3, 0, 5), "Attention, au mois l'un des paramètres est égale à 0")
  expect_error(heron(3, 4, 0), "Attention, au mois l'un des paramètres est égale à 0")
})
