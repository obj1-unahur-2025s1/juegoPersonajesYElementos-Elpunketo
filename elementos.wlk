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
    return(self.nivelDeDefensa())
  }
  method recibirTrabajo() {
    nivelDeDefensa = [self.nivelDeDefensa(),180].min() + 20
    return(self.nivelDeDefensa())
  }
  method otorgarValor() { 
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
    return(estaViva)
    }
  method recibirTrabajo() {
    return("los valores de aurora no sufren modificaciones al recibir un trabajo")
  }
  method otorgarValor() {return 15}
  }

object tipa {
  var altura = {return 8}
  method altura(unaAltura) {altura = unaAltura}
  method altura() {return altura}
  method recibirAtaque(unArma) {
    return("tipa no puede recibir ningun tipo de ataque")
  }
  method recibirTrabajo() {
    altura = self.altura() + 1
    return(self.altura())
  }
  method otorgarValor() {
    return self.altura() * 2
  }
}
