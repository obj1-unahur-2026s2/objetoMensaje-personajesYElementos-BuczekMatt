
//---------------------------Personajes---------------------------
object luisa {
  
}

object floki {
  var arma = jabalina
  
  method arma() {
    return arma
  }
  method cambiarDeArma(unArma) {
    arma = unArma
  }
  method encontrar(elemento) {
    if (self.arma().estaCargada()){

      elemento.recibirAtaque(self.arma().potencia())
      self.arma().usar()

    }
  }
}

object mario {
  method encontrar(elemento) {
    
  }
}

//-----------------------------Armas-----------------------------

object ballesta  {
  var cantDeFlechas = 10

  method cantDeFlechas() {
    return cantDeFlechas
  }
  method potencia() = 4
  method estaCargada() {
    return cantDeFlechas>0
  }
  method usar() {
    cantDeFlechas -= 1
  }

}

object jabalina  {
  var estaCargada = true
   
  method potencia() = 30
  method usar() {
    estaCargada = false
  }
  method estaCargada() {
    return estaCargada
}
}


//---------------------------Elementos---------------------------

object castillo {
  var nivelDeDefesa = 150

  method altura() {
    return 20
  }
  
  method nivelDeDefesa() {
    return nivelDeDefesa
  }

  method recibirAtaque(potenciaDeArma) {
    nivelDeDefesa -= potenciaDeArma
  }
  

}

object aurora  {
  var estaViva = true

  method altura() {
    return 1
  }
  method estaViva() {
    return estaViva
  }

  method recibirAtaque(potenciaDeArma) {

    if (potenciaDeArma>=10){
      estaViva = false
    }
    
  }

}

object tipa   {
  var altura = 8

  method altura() {
    return altura
  }

  method recibirAtaque(potenciaDeArma) { }

}