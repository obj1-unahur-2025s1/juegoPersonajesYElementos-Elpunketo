object castillo {
  var nivelDeDefensa = 150
  var altura = {return 20}
  method nivelDeDefensa(unNivelDeDefensa) {nivelDeDefensa = unNivelDeDefensa}
  method nivelDeDefensa() {return nivelDeDefensa}
}

object aurora {
  var altura = {return 1}
  var estaViva = true
  method estaViva(siEstaViva) {estaViva = siEstaViva}
  method estaViva() {return estaViva}
}

object tipa {
  var altura = 8
  method altura(unaAltura) {altura = unaAltura}
  method altura() {return altura}
}
