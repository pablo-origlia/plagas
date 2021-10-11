class Plaga {

  var property poblacion

  method nivelDeDanio() {
    return 0
  }

  method transmitenEnfermedades() = poblacion > 10

}

class PlagaDeCucarachas inherits Plaga {

  var pesoPromedio

  override method nivelDeDanio() = poblacion / 2

  override method transmitenEnfermedades() = super() and pesoPromedio > 10

}

class PlagaDePulgas inherits Plaga {

  override method nivelDeDanio() = 2 * poblacion

}

class PlagaDeGarrapata inherits PlagaDePulgas {

}

class PlagaDeMosquitos inherits Plaga {

  override method nivelDeDanio() = poblacion

  override method transmitenEnfermedades() = super() and (poblacion % 3 == 0)

}

