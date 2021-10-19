import elementos.*

class Plaga {

  var property poblacion

  method nivelDeDanio() {
    return 0
  }

  method transmiteEnfermedades() = poblacion >= 10

  method efectoPorAtaque() {
    poblacion += poblacion * 0.10
  }

  method atacaA(elemento) {
    elemento.recibeAtaque(self)
    self.efectoPorAtaque()
  }

}

class PlagaDeCucarachas inherits Plaga {

  var pesoPromedio

  override method nivelDeDanio() = poblacion / 2

  override method transmiteEnfermedades() = super() and pesoPromedio > 10

  override method efectoPorAtaque() {
    super()
    pesoPromedio += 2
  }

}

class PlagaDePulgas inherits Plaga {

  override method nivelDeDanio() = 2 * poblacion

}

class PlagaDeGarrapata inherits PlagaDePulgas {

  override method efectoPorAtaque() {
    poblacion += poblacion * 0.20
  }

}

class PlagaDeMosquitos inherits Plaga {

  override method nivelDeDanio() = poblacion

  override method transmiteEnfermedades() = super() and (poblacion % 3 == 0)

}

