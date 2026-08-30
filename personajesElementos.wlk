
//---------------------------Personajes---------------------------
object luisa {
  var personajeActivo = mario

  method aparece(unElemento) {
    personajeActivo.encontrar(unElemento)
  }

  method cambiarJugador(unPersonaje) {
    personajeActivo = unPersonaje
  }

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
  var valorRecolectado = 0
  var ultimoElemento = aurora

  method encontrar(elemento) {
    ultimoElemento = elemento
    valorRecolectado += elemento.recibirTrabajo()
  }

  method estaFeliz() {
    return valorRecolectado>=50 || ultimoElemento.altura()>=10
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
  
  method recibirTrabajo() {
    const valor = nivelDeDefesa *0.2
    nivelDeDefesa = (nivelDeDefesa + 20).min(200)
    return valor
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
  method recibirTrabajo() {
    return 15
  }

}

object tipa   {
  var altura = 8

  method altura() {
    return altura
  }

  method recibirAtaque(potenciaDeArma) { }

  method recibirTrabajo() {
    const valor = altura * 2
    altura += 1
    return valor
  }
  
}