#' Fonction heron permettant de calculer la formule du heron, qui permet de calculer
#' l'air d'un triangle à partir de 3 paramètres : a,b,c
#' @title heron
#' @param a Longueur du côté a du triangle
#' @param b Longueur du côté b du triangle
#' @param c Longueur du côté c du triangle
#' @export
#' @examples
#' heron(1,2,3)
#' heron(4,5,6)

heron <- function(a,b,c){
  if (!is.numeric(a) || !is.numeric(b) || !is.numeric(c)){
    stop("les paramètres doivent tous être de formes numériques")
  }
  if (a==0 | b==0 | c==0){
    stop("Attention, au mois l'un des paramètres est égale à 0")
  }
  if (a<=0 || b<=0 || c<=0){
    stop("les paramètres doivent tous être > 0")
  }
  p <- demi_perimetre(a,b,c)
    if (p<0){
      stop("le demi-paramètre doit être positif")
    }
  sqrt(p*(p-a)*(p-b)*(p-c))
}

