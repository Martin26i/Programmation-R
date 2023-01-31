# EXERCICE 2.1.1

brutToNet1 <- function(salaireBrutM){
  if (is.numeric(salaireBrutM) == FALSE){
    print('ERROR : type not expecte')
  }
  else{
    salaireBrutM*0.78
  }
}

brutToNet1(1600)


# Exercice 2.1.2

brutToNet2 <- function(salaireBrutM, statut){
  if (is.character(statut) == FALSE){
    print('ERROR : contract unknown.')
  }
  else{
    if(statut == 'cadre'){
      salaireBrutM = salaireBrutM*0.75
      }
    else{
      salaireBrutM = salaireBrutM*0.78
    }
  }
  salaireBrutM = salaireBrutM*0.925
  return (salaireBrutM)
}

 
brutToNet2(1600,'cadre')

# Exercice 2.1.3

brutToNet3 = function(salaireBrutM, statut, taux = 7.5, temps = 100){
  if (temps < 0 | temps > 100 | taux > 100 | taux < 0){
    print('ERROR : rate and time must be in range(0,100)')
  }
  else{
    if(statut == 'cadre'){
      salaireBrutM = salaireBrutM*0.75
    }
    else{
      salaireBrutM = salaireBrutM*0.78
    }
    SNAvant = salaireBrutM
    salaireBrutM = salaireBrutM*(1-taux/100)
    salaireBrutM = salaireBrutM*(temps/100)
    SNApres = salaireBrutM
  }

   return(SNAvant)
  return(SNApres)
}
brutToNet3(1600,statut = 'cadre')