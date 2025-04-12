import jugadoresPersonajes.*
import armas.*
object castillo {
  var nivelDeDefensa = 150
  var altura = {return 20}
  method altura(unaAltura) {altura = unaAltura}
  method altura() {return altura}
  method nivelDeDefensa(unNivelDeDefensa) {nivelDeDefensa = unNivelDeDefensa}
  method nivelDeDefensa() {return nivelDeDefensa}
  method recibirAtaque(unArma) {
    nivelDeDefensa = self.nivelDeDefensa() - unArma.potencia()
  }
  method recibirTrabajo() {
    nivelDeDefensa = [self.nivelDeDefensa(),180].min() + 20
  }
  method valorAOtorgar() { 
    return self.nivelDeDefensa() / 5
  }
  }


object aurora {
  var altura = {return 1}
  var estaViva = true
  method altura(unaAltura) {altura = unaAltura}
  method altura() {return altura}
  method estaViva(siEstaViva) {estaViva = siEstaViva}
  method estaViva() {return estaViva}
  method recibirAtaque(unArma) {
    estaViva = !(unArma == ballesta)
    }
  method recibirTrabajo() {
    null
  }
  method valorAOtorgar() {
   return 15
  }
}

object tipa {
  var altura = {return 8}
  method altura(unaAltura) {altura = unaAltura}
  method altura() {return altura}
  method recibirAtaque(unArma) {
    null
  }
  method recibirTrabajo() {
    altura = altura + 1
  }
  method valorAOtorgar() {
    return self.altura() * 2
  }
}
