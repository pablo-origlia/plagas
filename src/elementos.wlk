class Elemento {

}

class Hogar {

  var property nivelDeMugre
  var property confort

  method esBueno() = (nivelDeMugre / 2) < confort

}

class Huerta {

  const nivel = 10
  var property capacidad

  method esBueno() = capacidad > nivel

}

class Mascota {

  var property nivelDeSalud

  method esBueno() = nivelDeSalud > 250

}

class Barrio {

  const componentes = #{}

  method agregarComponente(unaElemento) {
    componentes.add(unaElemento)
  }

  method esCopado() = componentes.count({ c => c.esBueno() }) > componentes.count({ c => not c.esBueno() })

}

