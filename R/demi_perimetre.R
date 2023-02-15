#' Fonction demi-perimetre pour calculer le demi-perimetre d'un triangle
#' @title demi-perimetre
#' @param a Longueur du côté a du triangle
#' @param b Longueur du côté b du triangle
#' @param c Longueur du côté c du triangle
#' @noRd

demi_perimetre <- function(a,b,c){
  (a + b + c) / 2
}
