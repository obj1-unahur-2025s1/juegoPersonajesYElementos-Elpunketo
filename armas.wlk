import elementos.*
import jugadoresPersonajes.*
object ballesta {
    method potencia() {return 4}
    var usada = false
    var flechas = 10
    method flechas(cantidadFlechas) {flechas = cantidadFlechas}
    method flechas() {return flechas}
    method usada(siFueUsada) {usada = siFueUsada}
    method usada() {return usada}
    method estaCargada() {
        self.flechas() >= 1
    }
    method usar() {
        usada = true
        flechas = self.flechas() - 1
        return("La ballesta ha sido utilizada, la cantidad de flechas restantes es: " + self.flechas())
    }
}

object jabalina {
    method potencia() {return 30}
    var usada = false
    var municion = 1
    method municion(cantidadMunicion) {municion = cantidadMunicion}
    method municion() {return municion}
    method usada(siFueUsada) {usada = siFueUsada}
    method usada() {return usada}
    method estaCargada() {
        self.municion() == 1
    }
    method usar() {
        usada = true
        municion = self.municion() - 1
        return ("La jabalina ha sido utilizada, no puede volver a utilizarse")
    }
}


