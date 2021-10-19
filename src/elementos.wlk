import plagas.*

class Hogar {

  var property nivelDeMugre
  var property confort

  method esBueno() = (nivelDeMugre / 2) < confort

  method recibeAtaque(plaga) {
    nivelDeMugre += plaga.nivelDeDanio()
  }

}

object nivelDeProduccion {

  method valor() = 50

}

class Huerta {

  const nivel = nivelDeProduccion
  var property capacidad

  method esBueno() = capacidad > nivel.valor()

  method recibeAtaque(plaga) {
    capacidad += plaga.nivelDeDanio() * 0.10 + if(plaga.transmiteEnfermedades()) 10 else 0
  }

}

class Mascota {

  var property nivelDeSalud

  method esBueno() = nivelDeSalud > 250

  method recibeAtaque(plaga) {
    nivelDeSalud -= if(plaga.transmiteEnfermedades()) plaga.nivelDeDanio() else 0
  }

}

class Barrio {

  const componentes = #{}

  method agregarComponente(unaElemento) {
    componentes.add(unaElemento)
  }

  method esCopado() = componentes.count({ c => c.esBueno() }) > componentes.count({ c => not c.esBueno() })

}

